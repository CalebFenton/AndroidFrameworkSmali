.class public Lcom/android/internal/telephony/IndentingPrintWriter;
.super Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
.source "IndentingPrintWriter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
    .registers 1

    .line 27
    invoke-virtual {p0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public blacklist decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;
    .registers 1

    .line 63
    invoke-super {p0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-object p0
.end method

.method public bridge synthetic blacklist increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
    .registers 1

    .line 27
    invoke-virtual {p0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public blacklist increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;
    .registers 1

    .line 57
    invoke-super {p0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-object p0
.end method

.method public blacklist printHexPair(Ljava/lang/String;I)Lcom/android/internal/telephony/IndentingPrintWriter;
    .registers 3

    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->printHexInt(Ljava/lang/String;I)Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-object p0
.end method

.method public blacklist printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/telephony/IndentingPrintWriter;
    .registers 3

    .line 68
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-object p0
.end method

.method public blacklist printPair(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/internal/telephony/IndentingPrintWriter;
    .registers 3

    .line 73
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-object p0
.end method

.method public bridge synthetic blacklist setIndent(I)Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->setIndent(I)Lcom/android/internal/telephony/IndentingPrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist setIndent(Ljava/lang/String;)Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/telephony/IndentingPrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setIndent(I)Lcom/android/internal/telephony/IndentingPrintWriter;
    .registers 2

    .line 51
    invoke-super {p0, p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->setIndent(I)Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-object p0
.end method

.method public blacklist setIndent(Ljava/lang/String;)Lcom/android/internal/telephony/IndentingPrintWriter;
    .registers 2

    .line 46
    invoke-super {p0, p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-object p0
.end method
