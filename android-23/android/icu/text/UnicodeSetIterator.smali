.class public Landroid/icu/text/UnicodeSetIterator;
.super Ljava/lang/Object;
.source "UnicodeSetIterator.java"


# static fields
.field public static IS_STRING:I


# instance fields
.field public codepoint:I

.field public codepointEnd:I

.field protected endElement:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private endRange:I

.field protected nextElement:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private range:I

.field private set:Landroid/icu/text/UnicodeSet;

.field public string:Ljava/lang/String;

.field private stringIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, -0x1

    #@1
    sput v0, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@3
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 234
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    #@6
    .line 235
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    #@8
    .line 258
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@b
    .line 92
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@d
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@10
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->reset(Landroid/icu/text/UnicodeSet;)V

    #@13
    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 234
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    #@6
    .line 235
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    #@8
    .line 258
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@b
    .line 82
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSetIterator;->reset(Landroid/icu/text/UnicodeSet;)V

    #@e
    .line 81
    return-void
.end method


# virtual methods
.method public getSet()Landroid/icu/text/UnicodeSet;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    #@2
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 225
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@2
    sget v1, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 226
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@8
    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 228
    :cond_0
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    #@f
    return-object v0
.end method

.method protected loadRange(I)V
    .locals 1
    .param p1, "aRange"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    #@8
    .line 271
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    #@a
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    #@10
    .line 269
    return-void
.end method

.method public next()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 116
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    #@4
    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 117
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    #@a
    add-int/lit8 v1, v0, 0x1

    #@c
    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    #@e
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    #@10
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@12
    .line 118
    return v2

    #@13
    .line 120
    :cond_0
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    #@15
    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    #@17
    if-ge v0, v1, :cond_1

    #@19
    .line 121
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    #@1f
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->loadRange(I)V

    #@22
    .line 122
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    #@24
    add-int/lit8 v1, v0, 0x1

    #@26
    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    #@28
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    #@2a
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@2c
    .line 123
    return v2

    #@2d
    .line 128
    :cond_1
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@2f
    if-nez v0, :cond_2

    #@31
    .line 129
    const/4 v0, 0x0

    #@32
    return v0

    #@33
    .line 131
    :cond_2
    sget v0, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@35
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@37
    .line 132
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Ljava/lang/String;

    #@3f
    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    #@41
    .line 133
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_3

    #@49
    .line 134
    iput-object v3, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@4b
    .line 136
    :cond_3
    return v2
.end method

.method public nextRange()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 160
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    #@4
    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 161
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    #@a
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    #@c
    .line 162
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    #@e
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@10
    .line 163
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    #@16
    .line 164
    return v2

    #@17
    .line 166
    :cond_0
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    #@19
    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    #@1b
    if-ge v0, v1, :cond_1

    #@1d
    .line 167
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    #@23
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->loadRange(I)V

    #@26
    .line 168
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    #@28
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    #@2a
    .line 169
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    #@2c
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@2e
    .line 170
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    #@34
    .line 171
    return v2

    #@35
    .line 176
    :cond_1
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@37
    if-nez v0, :cond_2

    #@39
    .line 177
    const/4 v0, 0x0

    #@3a
    return v0

    #@3b
    .line 179
    :cond_2
    sget v0, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@3d
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@3f
    .line 180
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Ljava/lang/String;

    #@47
    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    #@49
    .line 181
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v0

    #@4f
    if-nez v0, :cond_3

    #@51
    .line 182
    iput-object v3, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@53
    .line 184
    :cond_3
    return v2
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 204
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    #@4
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    #@c
    .line 205
    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    #@e
    .line 206
    const/4 v0, -0x1

    #@f
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    #@11
    .line 207
    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    #@13
    .line 208
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    #@15
    if-ltz v0, :cond_0

    #@17
    .line 209
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    #@19
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->loadRange(I)V

    #@1c
    .line 211
    :cond_0
    iput-object v2, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@1e
    .line 212
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    #@20
    iget-object v0, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 213
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    #@26
    iget-object v0, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@28
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@2e
    .line 214
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_1

    #@36
    .line 215
    iput-object v2, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    #@38
    .line 203
    :cond_1
    return-void
.end method

.method public reset(Landroid/icu/text/UnicodeSet;)V
    .locals 0
    .param p1, "uset"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 195
    iput-object p1, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    #@2
    .line 196
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSetIterator;->reset()V

    #@5
    .line 194
    return-void
.end method
