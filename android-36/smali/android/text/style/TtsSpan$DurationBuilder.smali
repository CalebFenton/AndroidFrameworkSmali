.class public Landroid/text/style/TtsSpan$DurationBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$DurationBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1189
    const-string v0, "android.type.duration"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1190
    return-void
.end method


# virtual methods
.method public whitelist setHours(I)Landroid/text/style/TtsSpan$DurationBuilder;
    .registers 3
    .param p1, "hours"    # I

    .line 1200
    const-string v0, "android.arg.hours"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DurationBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DurationBuilder;

    return-object v0
.end method

.method public whitelist setMinutes(I)Landroid/text/style/TtsSpan$DurationBuilder;
    .registers 3
    .param p1, "minutes"    # I

    .line 1211
    const-string v0, "android.arg.minutes"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DurationBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DurationBuilder;

    return-object v0
.end method

.method public whitelist setSeconds(I)Landroid/text/style/TtsSpan$DurationBuilder;
    .registers 3
    .param p1, "seconds"    # I

    .line 1222
    const-string v0, "android.arg.seconds"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DurationBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DurationBuilder;

    return-object v0
.end method
