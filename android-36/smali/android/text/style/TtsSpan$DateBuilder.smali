.class public Landroid/text/style/TtsSpan$DateBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$DateBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1237
    const-string v0, "android.type.date"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1238
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "weekday"    # Ljava/lang/Integer;
    .param p2, "day"    # Ljava/lang/Integer;
    .param p3, "month"    # Ljava/lang/Integer;
    .param p4, "year"    # Ljava/lang/Integer;

    .line 1250
    invoke-direct {p0}, Landroid/text/style/TtsSpan$DateBuilder;-><init>()V

    .line 1251
    if-eqz p1, :cond_c

    .line 1252
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DateBuilder;->setWeekday(I)Landroid/text/style/TtsSpan$DateBuilder;

    .line 1254
    :cond_c
    if-eqz p2, :cond_15

    .line 1255
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DateBuilder;->setDay(I)Landroid/text/style/TtsSpan$DateBuilder;

    .line 1257
    :cond_15
    if-eqz p3, :cond_1e

    .line 1258
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DateBuilder;->setMonth(I)Landroid/text/style/TtsSpan$DateBuilder;

    .line 1260
    :cond_1e
    if-eqz p4, :cond_27

    .line 1261
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DateBuilder;->setYear(I)Landroid/text/style/TtsSpan$DateBuilder;

    .line 1263
    :cond_27
    return-void
.end method


# virtual methods
.method public whitelist setDay(I)Landroid/text/style/TtsSpan$DateBuilder;
    .registers 3
    .param p1, "day"    # I

    .line 1283
    const-string v0, "android.arg.day"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    return-object v0
.end method

.method public whitelist setMonth(I)Landroid/text/style/TtsSpan$DateBuilder;
    .registers 3
    .param p1, "month"    # I

    .line 1293
    const-string v0, "android.arg.month"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    return-object v0
.end method

.method public whitelist setWeekday(I)Landroid/text/style/TtsSpan$DateBuilder;
    .registers 3
    .param p1, "weekday"    # I

    .line 1273
    const-string v0, "android.arg.weekday"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    return-object v0
.end method

.method public whitelist setYear(I)Landroid/text/style/TtsSpan$DateBuilder;
    .registers 3
    .param p1, "year"    # I

    .line 1303
    const-string v0, "android.arg.year"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    return-object v0
.end method
