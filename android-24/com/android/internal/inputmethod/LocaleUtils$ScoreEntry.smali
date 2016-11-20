.class final Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
.super Ljava/lang/Object;
.source "LocaleUtils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScoreEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public mIndex:I

.field public final mScore:[B


# direct methods
.method constructor <init>([BI)V
    .locals 1
    .param p1, "score"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 118
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    #@6
    .line 122
    array-length v0, p1

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    #@b
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->set([BI)V

    #@e
    .line 121
    return-void
.end method

.method private static compare([B[B)I
    .locals 3
    .param p0, "left"    # [B
    .param p1, "right"    # [B

    #@0
    .prologue
    .line 159
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_2

    #@4
    .line 160
    aget-byte v1, p0, v0

    #@6
    aget-byte v2, p1, v0

    #@8
    if-le v1, v2, :cond_0

    #@a
    .line 161
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 162
    :cond_0
    aget-byte v1, p0, v0

    #@e
    aget-byte v2, p1, v0

    #@10
    if-ge v1, v2, :cond_1

    #@12
    .line 163
    const/4 v1, -0x1

    #@13
    return v1

    #@14
    .line 159
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 166
    :cond_2
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method private set([BI)V
    .locals 3
    .param p1, "score"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    .line 127
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 128
    iget-object v1, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    #@8
    aget-byte v2, p1, v0

    #@a
    aput-byte v2, v1, v0

    #@c
    .line 127
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 130
    :cond_0
    iput p2, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    #@11
    .line 126
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;)I
    .locals 2
    .param p1, "other"    # Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    #@2
    iget-object v1, p1, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    #@4
    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->compare([B[B)I

    #@7
    move-result v0

    #@8
    mul-int/lit8 v0, v0, -0x1

    #@a
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 170
    check-cast p1, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->compareTo(Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public updateIfBetter([BI)V
    .locals 2
    .param p1, "score"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->compare([B[B)I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->set([BI)V

    #@c
    .line 136
    :cond_0
    return-void
.end method
