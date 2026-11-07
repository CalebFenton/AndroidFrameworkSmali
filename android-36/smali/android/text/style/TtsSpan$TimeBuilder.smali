.class public Landroid/text/style/TtsSpan$TimeBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$TimeBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1131
    const-string v0, "android.type.time"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1132
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "hours"    # I
    .param p2, "minutes"    # I

    .line 1139
    invoke-direct {p0}, Landroid/text/style/TtsSpan$TimeBuilder;-><init>()V

    .line 1140
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$TimeBuilder;->setHours(I)Landroid/text/style/TtsSpan$TimeBuilder;

    .line 1141
    invoke-virtual {p0, p2}, Landroid/text/style/TtsSpan$TimeBuilder;->setMinutes(I)Landroid/text/style/TtsSpan$TimeBuilder;

    .line 1142
    return-void
.end method


# virtual methods
.method public whitelist setHours(I)Landroid/text/style/TtsSpan$TimeBuilder;
    .registers 3
    .param p1, "hours"    # I

    .line 1151
    const-string v0, "android.arg.hours"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$TimeBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$TimeBuilder;

    return-object v0
.end method

.method public whitelist setMinutes(I)Landroid/text/style/TtsSpan$TimeBuilder;
    .registers 3
    .param p1, "minutes"    # I

    .line 1162
    const-string v0, "android.arg.minutes"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$TimeBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$TimeBuilder;

    return-object v0
.end method

.method public whitelist setSeconds(I)Landroid/text/style/TtsSpan$TimeBuilder;
    .registers 3
    .param p1, "seconds"    # I

    .line 1173
    const-string v0, "android.arg.seconds"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$TimeBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$TimeBuilder;

    return-object v0
.end method
