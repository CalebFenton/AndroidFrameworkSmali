.class public final Landroid/provider/MediaStore$Audio;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Audio$Thumbnails;,
        Landroid/provider/MediaStore$Audio$Radio;,
        Landroid/provider/MediaStore$Audio$Albums;,
        Landroid/provider/MediaStore$Audio$AlbumColumns;,
        Landroid/provider/MediaStore$Audio$Artists;,
        Landroid/provider/MediaStore$Audio$ArtistColumns;,
        Landroid/provider/MediaStore$Audio$Playlists;,
        Landroid/provider/MediaStore$Audio$PlaylistsColumns;,
        Landroid/provider/MediaStore$Audio$Genres;,
        Landroid/provider/MediaStore$Audio$GenresColumns;,
        Landroid/provider/MediaStore$Audio$Media;,
        Landroid/provider/MediaStore$Audio$AudioColumns;
    }
.end annotation


# static fields
.field private static final blacklist PATTERN_TRIM_AFTER:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_TRIM_BEFORE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3685
    const-string v0, "(?i)(^(the|an|a) |,\\s*(the|an|a)$|[^\\w\\s]|^\\s+|\\s+$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Audio;->PATTERN_TRIM_BEFORE:Ljava/util/regex/Pattern;

    .line 3687
    const-string v0, "(^(00)+|(00)+$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Audio;->PATTERN_TRIM_AFTER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 3472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist encodeToString([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .line 3728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3729
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1f

    aget-byte v3, p0, v2

    .line 3730
    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3729
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3732
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist keyFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3705
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 3707
    :cond_9
    const-string v0, "<unknown>"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "01"

    if-eqz v0, :cond_14

    .line 3708
    return-object v2

    .line 3711
    :cond_14
    const-string v0, "\u0001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 3713
    .local v0, "sortFirst":Z
    sget-object v3, Landroid/provider/MediaStore$Audio;->PATTERN_TRIM_BEFORE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3714
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    return-object v1

    .line 3716
    :cond_2b
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    .line 3717
    .local v3, "c":Ljava/text/Collator;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/text/Collator;->setStrength(I)V

    .line 3718
    invoke-virtual {v3, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MediaStore$Audio;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    .line 3720
    sget-object v4, Landroid/provider/MediaStore$Audio;->PATTERN_TRIM_AFTER:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3721
    if-eqz v0, :cond_5e

    .line 3722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3724
    :cond_5e
    return-object p0
.end method
