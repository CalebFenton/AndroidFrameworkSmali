.class public Landroid/text/style/TtsSpan$DigitsBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigitsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$DigitsBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1525
    const-string v0, "android.type.digits"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1526
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "digits"    # Ljava/lang/String;

    .line 1533
    invoke-direct {p0}, Landroid/text/style/TtsSpan$DigitsBuilder;-><init>()V

    .line 1534
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DigitsBuilder;->setDigits(Ljava/lang/String;)Landroid/text/style/TtsSpan$DigitsBuilder;

    .line 1535
    return-void
.end method


# virtual methods
.method public whitelist setDigits(Ljava/lang/String;)Landroid/text/style/TtsSpan$DigitsBuilder;
    .registers 3
    .param p1, "digits"    # Ljava/lang/String;

    .line 1543
    const-string v0, "android.arg.digits"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DigitsBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DigitsBuilder;

    return-object v0
.end method
