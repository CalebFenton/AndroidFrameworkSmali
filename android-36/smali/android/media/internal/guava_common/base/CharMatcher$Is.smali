.class final Landroid/media/internal/guava_common/base/CharMatcher$Is;
.super Landroid/media/internal/guava_common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Is"
.end annotation


# instance fields
.field private final blacklist match:C


# direct methods
.method constructor blacklist <init>(C)V
    .registers 2

    .line 1611
    invoke-direct {p0}, Landroid/media/internal/guava_common/base/CharMatcher$FastMatcher;-><init>()V

    .line 1612
    iput-char p1, p0, Landroid/media/internal/guava_common/base/CharMatcher$Is;->match:C

    return-void
.end method


# virtual methods
.method public blacklist matches(C)Z
    .registers 2

    .line 1617
    iget-char p0, p0, Landroid/media/internal/guava_common/base/CharMatcher$Is;->match:C

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.is(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p0, p0, Landroid/media/internal/guava_common/base/CharMatcher$Is;->match:C

    # invokes: Landroid/media/internal/guava_common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;
    invoke-static {p0}, Landroid/media/internal/guava_common/base/CharMatcher;->access$100(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
