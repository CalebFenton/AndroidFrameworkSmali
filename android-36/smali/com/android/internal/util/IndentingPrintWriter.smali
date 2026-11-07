.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Landroid/util/IndentingPrintWriter;
.source "IndentingPrintWriter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor greylist-max-r <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "wrapLength"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "wrapLength"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic greylist-max-r decreaseIndent()Landroid/util/IndentingPrintWriter;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    .registers 1

    .line 63
    invoke-super {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 64
    return-object p0
.end method

.method public bridge synthetic greylist-max-r increaseIndent()Landroid/util/IndentingPrintWriter;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    .registers 1

    .line 57
    invoke-super {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 58
    return-object p0
.end method

.method public greylist-max-o printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 78
    invoke-super {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->printHexInt(Ljava/lang/String;I)Landroid/util/IndentingPrintWriter;

    .line 79
    return-object p0
.end method

.method public greylist-max-o printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 68
    invoke-super {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 69
    return-object p0
.end method

.method public greylist-max-o printPair(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Object;

    .line 73
    invoke-super {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 74
    return-object p0
.end method

.method public bridge synthetic blacklist setIndent(I)Landroid/util/IndentingPrintWriter;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(I)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o setIndent(I)Lcom/android/internal/util/IndentingPrintWriter;
    .registers 2
    .param p1, "indent"    # I

    .line 51
    invoke-super {p0, p1}, Landroid/util/IndentingPrintWriter;->setIndent(I)Landroid/util/IndentingPrintWriter;

    .line 52
    return-object p0
.end method

.method public greylist-max-o setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;
    .registers 2
    .param p1, "indent"    # Ljava/lang/String;

    .line 46
    invoke-super {p0, p1}, Landroid/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;

    .line 47
    return-object p0
.end method
