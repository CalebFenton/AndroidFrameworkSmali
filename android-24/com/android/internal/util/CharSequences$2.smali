.class final Lcom/android/internal/util/CharSequences$2;
.super Ljava/lang/Object;
.source "CharSequences.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/CharSequences;->forAsciiBytes([BII)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bytes:[B

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>([BII)V
    .locals 0
    .param p1, "val$bytes"    # [B
    .param p2, "val$start"    # I
    .param p3, "val$end"    # I

    #@0
    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/util/CharSequences$2;->val$bytes:[B

    #@2
    iput p2, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    #@4
    iput p3, p0, Lcom/android/internal/util/CharSequences$2;->val$end:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/util/CharSequences$2;->val$bytes:[B

    #@2
    iget v1, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    #@4
    add-int/2addr v1, p1

    #@5
    aget-byte v0, v0, v1

    #@7
    int-to-char v0, v0

    #@8
    return v0
.end method

.method public length()I
    .locals 2

    #@0
    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/util/CharSequences$2;->val$end:I

    #@2
    iget v1, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "newStart"    # I
    .param p2, "newEnd"    # I

    #@0
    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    #@2
    sub-int/2addr p1, v0

    #@3
    .line 75
    iget v0, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    #@5
    sub-int/2addr p2, v0

    #@6
    .line 76
    invoke-virtual {p0}, Lcom/android/internal/util/CharSequences$2;->length()I

    #@9
    move-result v0

    #@a
    invoke-static {p1, p2, v0}, Lcom/android/internal/util/CharSequences;->validate(III)V

    #@d
    .line 77
    iget-object v0, p0, Lcom/android/internal/util/CharSequences$2;->val$bytes:[B

    #@f
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CharSequences;->forAsciiBytes([BII)Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 81
    new-instance v0, Ljava/lang/String;

    #@2
    iget-object v1, p0, Lcom/android/internal/util/CharSequences$2;->val$bytes:[B

    #@4
    iget v2, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    #@6
    invoke-virtual {p0}, Lcom/android/internal/util/CharSequences$2;->length()I

    #@9
    move-result v3

    #@a
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    #@d
    return-object v0
.end method
