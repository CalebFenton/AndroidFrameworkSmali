.class public Landroid/text/style/TtsSpan$Builder;
.super Ljava/lang/Object;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Landroid/text/style/TtsSpan$Builder<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private greylist-max-o mArgs:Landroid/os/PersistableBundle;

.field private final greylist-max-o mType:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 563
    .local p0, "this":Landroid/text/style/TtsSpan$Builder;, "Landroid/text/style/TtsSpan$Builder<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/text/style/TtsSpan$Builder;->mArgs:Landroid/os/PersistableBundle;

    .line 564
    iput-object p1, p0, Landroid/text/style/TtsSpan$Builder;->mType:Ljava/lang/String;

    .line 565
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/text/style/TtsSpan;
    .registers 4

    .line 573
    .local p0, "this":Landroid/text/style/TtsSpan$Builder;, "Landroid/text/style/TtsSpan$Builder<TC;>;"
    new-instance v0, Landroid/text/style/TtsSpan;

    iget-object v1, p0, Landroid/text/style/TtsSpan$Builder;->mType:Ljava/lang/String;

    iget-object v2, p0, Landroid/text/style/TtsSpan$Builder;->mArgs:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1, v2}, Landroid/text/style/TtsSpan;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;
    .registers 4
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TC;"
        }
    .end annotation

    .line 595
    .local p0, "this":Landroid/text/style/TtsSpan$Builder;, "Landroid/text/style/TtsSpan$Builder<TC;>;"
    iget-object v0, p0, Landroid/text/style/TtsSpan$Builder;->mArgs:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 596
    return-object p0
.end method

.method public whitelist setLongArgument(Ljava/lang/String;J)Landroid/text/style/TtsSpan$Builder;
    .registers 5
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TC;"
        }
    .end annotation

    .line 606
    .local p0, "this":Landroid/text/style/TtsSpan$Builder;, "Landroid/text/style/TtsSpan$Builder<TC;>;"
    iget-object v0, p0, Landroid/text/style/TtsSpan$Builder;->mArgs:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 607
    return-object p0
.end method

.method public whitelist setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;
    .registers 4
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .line 584
    .local p0, "this":Landroid/text/style/TtsSpan$Builder;, "Landroid/text/style/TtsSpan$Builder<TC;>;"
    iget-object v0, p0, Landroid/text/style/TtsSpan$Builder;->mArgs:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-object p0
.end method
