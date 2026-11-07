.class Lcom/android/internal/os/RuntimeInit$Arguments;
.super Ljava/lang/Object;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field blacklist startArgs:[Ljava/lang/String;

.field blacklist startClass:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    invoke-direct {p0, p1}, Lcom/android/internal/os/RuntimeInit$Arguments;->parseArgs([Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method private blacklist parseArgs([Ljava/lang/String;)V
    .registers 6
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, "curArg":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1b

    .line 555
    aget-object v1, p1, v0

    .line 557
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 558
    add-int/lit8 v0, v0, 0x1

    .line 559
    goto :goto_1b

    .line 560
    :cond_11
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 561
    goto :goto_1b

    .line 554
    .end local v1    # "arg":Ljava/lang/String;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 565
    :cond_1b
    :goto_1b
    array-length v1, p1

    if-eq v0, v1, :cond_34

    .line 569
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "curArg":I
    .local v1, "curArg":I
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    .line 570
    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    .line 571
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    return-void

    .line 566
    .end local v1    # "curArg":I
    .restart local v0    # "curArg":I
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing classname argument to RuntimeInit!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
