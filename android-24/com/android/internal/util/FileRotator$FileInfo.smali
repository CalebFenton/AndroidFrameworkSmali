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
.field public endMillis:J

.field public final prefix:Ljava/lang/String;

.field public startMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 409
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    iput-object v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    #@b
    .line 408
    return-void
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 449
    .local v0, "name":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const/16 v2, 0x2e

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget-wide v2, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    #@13
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const/16 v2, 0x2d

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 450
    iget-wide v2, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    #@1e
    const-wide v4, 0x7fffffffffffffffL

    #@23
    cmp-long v1, v2, v4

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 451
    iget-wide v2, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    #@29
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2c
    .line 453
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    return-object v1
.end method

.method public isActive()Z
    .locals 4

    #@0
    .prologue
    .line 460
    iget-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    #@2
    const-wide v2, 0x7fffffffffffffffL

    #@7
    cmp-long v0, v0, v2

    #@9
    if-nez v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v4, -0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 418
    iput-wide v8, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    #@7
    iput-wide v8, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    #@9
    .line 420
    const/16 v3, 0x2e

    #@b
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@e
    move-result v1

    #@f
    .line 421
    .local v1, "dotIndex":I
    const/16 v3, 0x2d

    #@11
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@14
    move-result v0

    #@15
    .line 424
    .local v0, "dashIndex":I
    if-eq v1, v4, :cond_0

    #@17
    if-ne v0, v4, :cond_1

    #@19
    :cond_0
    return v6

    #@1a
    .line 427
    :cond_1
    iget-object v3, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    #@1c
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_2

    #@26
    return v6

    #@27
    .line 430
    :cond_2
    add-int/lit8 v3, v1, 0x1

    #@29
    :try_start_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@30
    move-result-wide v4

    #@31
    iput-wide v4, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    #@33
    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@36
    move-result v3

    #@37
    sub-int/2addr v3, v0

    #@38
    if-ne v3, v7, :cond_3

    #@3a
    .line 433
    const-wide v4, 0x7fffffffffffffffL

    #@3f
    iput-wide v4, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    #@41
    .line 438
    :goto_0
    return v7

    #@42
    .line 435
    :cond_3
    add-int/lit8 v3, v0, 0x1

    #@44
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@4b
    move-result-wide v4

    #@4c
    iput-wide v4, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    goto :goto_0

    #@4f
    .line 439
    :catch_0
    move-exception v2

    #@50
    .line 440
    .local v2, "e":Ljava/lang/NumberFormatException;
    return v6
.end method
