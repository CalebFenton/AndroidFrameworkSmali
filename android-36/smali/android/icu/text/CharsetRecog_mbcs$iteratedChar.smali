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
.field blacklist charValue:I

.field blacklist done:Z

.field blacklist error:Z

.field blacklist nextIndex:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 146
    iput v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    .line 147
    iput-boolean v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 148
    iput-boolean v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    return-void
.end method


# virtual methods
.method blacklist nextByte(Landroid/icu/text/CharsetDetector;)I
    .registers 5
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 158
    iget v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iget v1, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    if-lt v0, v1, :cond_b

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    .line 160
    const/4 v0, -0x1

    return v0

    .line 162
    :cond_b
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    iget v1, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 163
    .local v0, "byteValue":I
    return v0
.end method

.method blacklist reset()V
    .registers 2

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 152
    iput v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    .line 153
    iput-boolean v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 154
    iput-boolean v0, p0, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    .line 155
    return-void
.end method
