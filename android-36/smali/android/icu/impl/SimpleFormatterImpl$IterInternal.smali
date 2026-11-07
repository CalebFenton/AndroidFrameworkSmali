.class public Landroid/icu/impl/SimpleFormatterImpl$IterInternal;
.super Ljava/lang/Object;
.source "SimpleFormatterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/SimpleFormatterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IterInternal"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist DONE:J = -0x1L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 419
    const-class v0, Landroid/icu/impl/SimpleFormatterImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getArgIndex(J)I
    .registers 3
    .param p0, "state"    # J

    .line 442
    long-to-int v0, p0

    return v0
.end method

.method public static blacklist step(JLjava/lang/CharSequence;Ljava/lang/Appendable;)J
    .registers 10
    .param p0, "state"    # J
    .param p2, "compiledPattern"    # Ljava/lang/CharSequence;
    .param p3, "output"    # Ljava/lang/Appendable;

    .line 423
    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v1, v1

    .line 424
    .local v1, "i":I
    nop

    .line 425
    add-int/lit8 v1, v1, 0x1

    .line 426
    :goto_8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_2d

    .line 427
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, v3

    .line 429
    .local v2, "limit":I
    add-int/lit8 v3, v1, 0x1

    :try_start_20
    invoke-interface {p3, p2, v3, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_26

    .line 432
    nop

    .line 433
    move v1, v2

    .line 434
    .end local v2    # "limit":I
    goto :goto_8

    .line 430
    .restart local v2    # "limit":I
    :catch_26
    move-exception v0

    .line 431
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v3, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 435
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "limit":I
    :cond_2d
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_36

    .line 436
    const-wide/16 v2, -0x1

    return-wide v2

    .line 438
    :cond_36
    int-to-long v2, v1

    shl-long/2addr v2, v0

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    int-to-long v4, v0

    or-long/2addr v2, v4

    return-wide v2
.end method
