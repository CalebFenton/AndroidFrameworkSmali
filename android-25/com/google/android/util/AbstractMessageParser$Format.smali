.class public Lcom/google/android/util/AbstractMessageParser$Format;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Format"
.end annotation


# instance fields
.field private ch:C

.field private matched:Z

.field private start:Z


# direct methods
.method public constructor <init>(CZ)V
    .locals 2
    .param p1, "ch"    # C
    .param p2, "start"    # Z

    #@0
    .prologue
    .line 1183
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v0, v1}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    #@9
    .line 1184
    iput-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    #@b
    .line 1185
    iput-boolean p2, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    #@d
    .line 1182
    return-void
.end method

.method private getFormatEnd(C)Ljava/lang/String;
    .locals 3
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 1224
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1229
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "unknown format \'"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, "\'"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@23
    throw v0

    #@24
    .line 1225
    :sswitch_0
    const-string/jumbo v0, "</b>"

    #@27
    return-object v0

    #@28
    .line 1226
    :sswitch_1
    const-string/jumbo v0, "</i>"

    #@2b
    return-object v0

    #@2c
    .line 1227
    :sswitch_2
    const-string/jumbo v0, "</font></b>"

    #@2f
    return-object v0

    #@30
    .line 1228
    :sswitch_3
    const-string/jumbo v0, "\u201d</font>"

    #@33
    return-object v0

    #@34
    .line 1224
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x2a -> :sswitch_0
        0x5e -> :sswitch_2
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method private getFormatStart(C)Ljava/lang/String;
    .locals 3
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 1214
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1219
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "unknown format \'"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, "\'"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@23
    throw v0

    #@24
    .line 1215
    :sswitch_0
    const-string/jumbo v0, "<b>"

    #@27
    return-object v0

    #@28
    .line 1216
    :sswitch_1
    const-string/jumbo v0, "<i>"

    #@2b
    return-object v0

    #@2c
    .line 1217
    :sswitch_2
    const-string/jumbo v0, "<b><font color=\"#005FFF\">"

    #@2f
    return-object v0

    #@30
    .line 1218
    :sswitch_3
    const-string/jumbo v0, "<font color=\"#999999\">\u201c"

    #@33
    return-object v0

    #@34
    .line 1214
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x2a -> :sswitch_0
        0x5e -> :sswitch_2
        0x5f -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public controlCaps()Z
    .locals 2

    #@0
    .prologue
    .line 1210
    iget-char v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    #@2
    const/16 v1, 0x5e

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public getInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public isHtml()Z
    .locals 1

    #@0
    .prologue
    .line 1190
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setCaps()Z
    .locals 1

    #@0
    .prologue
    .line 1211
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    #@2
    return v0
.end method

.method public setMatched(Z)V
    .locals 0
    .param p1, "matched"    # Z

    #@0
    .prologue
    .line 1188
    iput-boolean p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->matched:Z

    #@2
    return-void
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 2
    .param p1, "caps"    # Z

    #@0
    .prologue
    .line 1195
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->matched:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1196
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-char v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    #@a
    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser$Format;->getFormatStart(C)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :goto_0
    return-object v0

    #@f
    :cond_0
    iget-char v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    #@11
    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser$Format;->getFormatEnd(C)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    goto :goto_0

    #@16
    .line 1199
    :cond_1
    iget-char v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    #@18
    const/16 v1, 0x22

    #@1a
    if-ne v0, v1, :cond_2

    #@1c
    const-string/jumbo v0, "&quot;"

    #@1f
    :goto_1
    return-object v0

    #@20
    :cond_2
    iget-char v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    #@22
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    goto :goto_1
.end method
