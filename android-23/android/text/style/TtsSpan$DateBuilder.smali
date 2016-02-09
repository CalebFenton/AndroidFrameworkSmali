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
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$DateBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1147
    const-string/jumbo v0, "android.type.date"

    #@3
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    #@6
    .line 1146
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "weekday"    # Ljava/lang/Integer;
    .param p2, "day"    # Ljava/lang/Integer;
    .param p3, "month"    # Ljava/lang/Integer;
    .param p4, "year"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 1160
    invoke-direct {p0}, Landroid/text/style/TtsSpan$DateBuilder;-><init>()V

    #@3
    .line 1161
    if-eqz p1, :cond_0

    #@5
    .line 1162
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@8
    move-result v0

    #@9
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DateBuilder;->setWeekday(I)Landroid/text/style/TtsSpan$DateBuilder;

    #@c
    .line 1164
    :cond_0
    if-eqz p2, :cond_1

    #@e
    .line 1165
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@11
    move-result v0

    #@12
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DateBuilder;->setDay(I)Landroid/text/style/TtsSpan$DateBuilder;

    #@15
    .line 1167
    :cond_1
    if-eqz p3, :cond_2

    #@17
    .line 1168
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v0

    #@1b
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DateBuilder;->setMonth(I)Landroid/text/style/TtsSpan$DateBuilder;

    #@1e
    .line 1170
    :cond_2
    if-eqz p4, :cond_3

    #@20
    .line 1171
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result v0

    #@24
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DateBuilder;->setYear(I)Landroid/text/style/TtsSpan$DateBuilder;

    #@27
    .line 1159
    :cond_3
    return-void
.end method


# virtual methods
.method public setDay(I)Landroid/text/style/TtsSpan$DateBuilder;
    .locals 1
    .param p1, "day"    # I

    #@0
    .prologue
    .line 1193
    const-string/jumbo v0, "android.arg.day"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    #@9
    return-object v0
.end method

.method public setMonth(I)Landroid/text/style/TtsSpan$DateBuilder;
    .locals 1
    .param p1, "month"    # I

    #@0
    .prologue
    .line 1203
    const-string/jumbo v0, "android.arg.month"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    #@9
    return-object v0
.end method

.method public setWeekday(I)Landroid/text/style/TtsSpan$DateBuilder;
    .locals 1
    .param p1, "weekday"    # I

    #@0
    .prologue
    .line 1183
    const-string/jumbo v0, "android.arg.weekday"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    #@9
    return-object v0
.end method

.method public setYear(I)Landroid/text/style/TtsSpan$DateBuilder;
    .locals 1
    .param p1, "year"    # I

    #@0
    .prologue
    .line 1213
    const-string/jumbo v0, "android.arg.year"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    #@9
    return-object v0
.end method
