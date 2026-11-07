.class Lcom/android/internal/util/FileRotator$FileInfo;
.super Ljava/lang/Object;
.source "FileRotator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FileRotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field public blacklist endMillis:J

.field public final blacklist prefix:Ljava/lang/String;

.field public blacklist startMillis:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    .line 442
    return-void
.end method


# virtual methods
.method public blacklist build()Ljava/lang/String;
    .registers 6

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .local v0, "name":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    iget-wide v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2c

    .line 483
    iget-wide v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 485
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist isActive()Z
    .registers 5

    .line 492
    iget-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist parse(Ljava/lang/String;)Z
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .line 450
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 452
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 453
    .local v0, "dotIndex":I
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 456
    .local v1, "dashIndex":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_51

    if-ne v1, v3, :cond_19

    goto :goto_51

    .line 459
    :cond_19
    iget-object v3, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    return v2

    .line 462
    :cond_26
    add-int/lit8 v3, v0, 0x1

    :try_start_28
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 464
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_42

    .line 465
    const-wide v5, 0x7fffffffffffffffL

    iput-wide v5, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    goto :goto_4e

    .line 467
    :cond_42
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_4e} :catch_4f

    .line 470
    :goto_4e
    return v4

    .line 471
    :catch_4f
    move-exception v3

    .line 472
    .local v3, "e":Ljava/lang/NumberFormatException;
    return v2

    .line 456
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_51
    :goto_51
    return v2
.end method
