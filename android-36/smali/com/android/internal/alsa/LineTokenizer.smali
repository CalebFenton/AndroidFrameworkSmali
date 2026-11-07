.class public Lcom/android/internal/alsa/LineTokenizer;
.super Ljava/lang/Object;
.source "LineTokenizer.java"


# static fields
.field public static final blacklist kTokenNotFound:I = -0x1


# instance fields
.field private final blacklist mDelimiters:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "delimiters"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method blacklist nextDelimiter(Ljava/lang/String;I)I
    .registers 8
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 47
    .local v0, "len":I
    move v1, p2

    .line 48
    .local v1, "offset":I
    :goto_5
    const/4 v2, -0x1

    if-ge v1, v0, :cond_18

    .line 49
    iget-object v3, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_15

    .line 51
    goto :goto_18

    .line 48
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 55
    :cond_18
    :goto_18
    if-ge v1, v0, :cond_1b

    move v2, v1

    :cond_1b
    return v2
.end method

.method blacklist nextToken(Ljava/lang/String;I)I
    .registers 8
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 34
    .local v0, "len":I
    move v1, p2

    .line 35
    .local v1, "offset":I
    :goto_5
    const/4 v2, -0x1

    if-ge v1, v0, :cond_18

    .line 36
    iget-object v3, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v2, :cond_15

    .line 38
    goto :goto_18

    .line 35
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 42
    :cond_18
    :goto_18
    if-ge v1, v0, :cond_1b

    move v2, v1

    :cond_1b
    return v2
.end method
