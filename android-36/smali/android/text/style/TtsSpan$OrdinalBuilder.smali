.class public Landroid/text/style/TtsSpan$OrdinalBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrdinalBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$OrdinalBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 768
    const-string v0, "android.type.ordinal"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method public constructor whitelist <init>(J)V
    .registers 3
    .param p1, "number"    # J

    .line 778
    invoke-direct {p0}, Landroid/text/style/TtsSpan$OrdinalBuilder;-><init>()V

    .line 779
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setNumber(J)Landroid/text/style/TtsSpan$OrdinalBuilder;

    .line 780
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "number"    # Ljava/lang/String;

    .line 789
    invoke-direct {p0}, Landroid/text/style/TtsSpan$OrdinalBuilder;-><init>()V

    .line 790
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$OrdinalBuilder;

    .line 791
    return-void
.end method


# virtual methods
.method public whitelist setNumber(J)Landroid/text/style/TtsSpan$OrdinalBuilder;
    .registers 4
    .param p1, "number"    # J

    .line 800
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$OrdinalBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$OrdinalBuilder;
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .line 810
    const-string v0, "android.arg.number"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$OrdinalBuilder;

    return-object v0
.end method
