.class public final Landroid/media/internal/exo/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"


# static fields
.field private static final blacklist GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public blacklist encoderDelay:I

.field public blacklist encoderPadding:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 50
    iput v0, p0, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderPadding:I

    return-void
.end method

.method private blacklist setFromComment(Ljava/lang/String;)Z
    .registers 6

    .line 105
    sget-object v0, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    .line 108
    :try_start_d
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    .line 109
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz v1, :cond_30

    if-lez p1, :cond_35

    .line 111
    :cond_30
    iput v1, p0, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 112
    iput p1, p0, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderPadding:I
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_34} :catch_35

    return v0

    :catch_35
    :cond_35
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist hasGaplessInfo()Z
    .registers 3

    .line 124
    iget v0, p0, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget p0, p0, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq p0, v1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setFromMetadata(Landroid/media/internal/exo/metadata/Metadata;)Z
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 77
    :goto_2
    invoke-virtual {p1}, Landroid/media/internal/exo/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 78
    invoke-virtual {p1, v1}, Landroid/media/internal/exo/metadata/Metadata;->get(I)Landroid/media/internal/exo/metadata/Metadata$Entry;

    move-result-object v2

    .line 79
    instance-of v3, v2, Landroid/media/internal/exo/metadata/id3/CommentFrame;

    const-string v4, "iTunSMPB"

    const/4 v5, 0x1

    if-eqz v3, :cond_26

    .line 80
    check-cast v2, Landroid/media/internal/exo/metadata/id3/CommentFrame;

    .line 81
    iget-object v3, v2, Landroid/media/internal/exo/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v2, v2, Landroid/media/internal/exo/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    .line 82
    invoke-direct {p0, v2}, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    return v5

    .line 85
    :cond_26
    instance-of v3, v2, Landroid/media/internal/exo/metadata/id3/InternalFrame;

    if-eqz v3, :cond_47

    .line 86
    check-cast v2, Landroid/media/internal/exo/metadata/id3/InternalFrame;

    .line 87
    iget-object v3, v2, Landroid/media/internal/exo/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    const-string v6, "com.apple.iTunes"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, v2, Landroid/media/internal/exo/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v2, v2, Landroid/media/internal/exo/metadata/id3/InternalFrame;->text:Ljava/lang/String;

    .line 89
    invoke-direct {p0, v2}, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    return v5

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4a
    return v0
.end method

.method public blacklist setFromXingHeaderValue(I)Z
    .registers 3

    shr-int/lit8 v0, p1, 0xc

    and-int/lit16 p1, p1, 0xfff

    if-gtz v0, :cond_b

    if-lez p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    .line 63
    :cond_b
    :goto_b
    iput v0, p0, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 64
    iput p1, p0, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderPadding:I

    const/4 p0, 0x1

    return p0
.end method
