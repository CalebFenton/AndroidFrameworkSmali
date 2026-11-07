.class public Landroid/text/style/TtsSpan$TextBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$TextBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 678
    const-string v0, "android.type.text"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .line 688
    invoke-direct {p0}, Landroid/text/style/TtsSpan$TextBuilder;-><init>()V

    .line 689
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$TextBuilder;->setText(Ljava/lang/String;)Landroid/text/style/TtsSpan$TextBuilder;

    .line 690
    return-void
.end method


# virtual methods
.method public whitelist setText(Ljava/lang/String;)Landroid/text/style/TtsSpan$TextBuilder;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 698
    const-string v0, "android.arg.text"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$TextBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$TextBuilder;

    return-object v0
.end method
