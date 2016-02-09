.class final Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableNumberFormat"
.end annotation


# instance fields
.field private nf:Landroid/icu/text/NumberFormat;


# direct methods
.method static synthetic -get0(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/icu/text/NumberFormat;)V
    .locals 1
    .param p1, "nf"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 925
    invoke-virtual {p1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/text/NumberFormat;

    #@9
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    #@b
    .line 924
    return-void
.end method


# virtual methods
.method public declared-synchronized format(Ljava/lang/Number;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/Number;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 944
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    #@3
    invoke-virtual {v0, p1}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "n"    # Landroid/icu/util/CurrencyAmount;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 939
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    #@3
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "n"    # Ljava/lang/Number;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 934
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    #@3
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized get()Landroid/icu/text/NumberFormat;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 929
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    #@3
    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/text/NumberFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public getPrefix(Z)Ljava/lang/String;
    .locals 1
    .param p1, "positive"    # Z

    #@0
    .prologue
    .line 948
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    #@4
    check-cast v0, Landroid/icu/text/DecimalFormat;

    #@6
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    #@d
    check-cast v0, Landroid/icu/text/DecimalFormat;

    #@f
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method

.method public getSuffix(Z)Ljava/lang/String;
    .locals 1
    .param p1, "positive"    # Z

    #@0
    .prologue
    .line 951
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    #@4
    check-cast v0, Landroid/icu/text/DecimalFormat;

    #@6
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    #@d
    check-cast v0, Landroid/icu/text/DecimalFormat;

    #@f
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method
