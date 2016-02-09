.class Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;
.super Ljava/lang/Object;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "iteratedChar"
.end annotation


# instance fields
.field charValue:I

.field done:Z

.field error:Z

.field index:I

.field nextIndex:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 141
    iput v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@6
    .line 142
    iput v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    #@8
    .line 143
    iput v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    #@a
    .line 144
    iput-boolean v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    #@c
    .line 145
    iput-boolean v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    #@e
    .line 140
    return-void
.end method


# virtual methods
.method nextByte(Landroid/icu/text/CharsetDetector;)I
    .locals 4
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 156
    iget v1, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    #@2
    iget v2, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    #@4
    if-lt v1, v2, :cond_0

    #@6
    .line 157
    const/4 v1, 0x1

    #@7
    iput-boolean v1, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    #@9
    .line 158
    const/4 v1, -0x1

    #@a
    return v1

    #@b
    .line 160
    :cond_0
    iget-object v1, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    #@d
    iget v2, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    #@f
    add-int/lit8 v3, v2, 0x1

    #@11
    iput v3, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    #@13
    aget-byte v1, v1, v2

    #@15
    and-int/lit16 v0, v1, 0xff

    #@17
    .line 161
    .local v0, "byteValue":I
    return v0
.end method

.method reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 148
    iput v1, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@3
    .line 149
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    #@6
    .line 150
    iput v1, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    #@8
    .line 151
    iput-boolean v1, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    #@a
    .line 152
    iput-boolean v1, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    #@c
    .line 147
    return-void
.end method
