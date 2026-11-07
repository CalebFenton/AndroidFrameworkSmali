.class public Landroid/text/style/TtsSpan$CardinalBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardinalBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$CardinalBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 712
    const-string v0, "android.type.cardinal"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public constructor whitelist <init>(J)V
    .registers 3
    .param p1, "number"    # J

    .line 722
    invoke-direct {p0}, Landroid/text/style/TtsSpan$CardinalBuilder;-><init>()V

    .line 723
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TtsSpan$CardinalBuilder;->setNumber(J)Landroid/text/style/TtsSpan$CardinalBuilder;

    .line 724
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "number"    # Ljava/lang/String;

    .line 733
    invoke-direct {p0}, Landroid/text/style/TtsSpan$CardinalBuilder;-><init>()V

    .line 734
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$CardinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$CardinalBuilder;

    .line 735
    return-void
.end method


# virtual methods
.method public whitelist setNumber(J)Landroid/text/style/TtsSpan$CardinalBuilder;
    .registers 4
    .param p1, "number"    # J

    .line 744
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$CardinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$CardinalBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$CardinalBuilder;
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .line 754
    const-string v0, "android.arg.number"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$CardinalBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$CardinalBuilder;

    return-object v0
.end method
