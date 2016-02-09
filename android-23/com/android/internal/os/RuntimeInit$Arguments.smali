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
.field startArgs:[Ljava/lang/String;

.field startClass:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 401
    invoke-direct {p0, p1}, Lcom/android/internal/os/RuntimeInit$Arguments;->parseArgs([Ljava/lang/String;)V

    #@6
    .line 400
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 409
    const/4 v1, 0x0

    #@1
    .line 410
    .local v1, "curArg":I
    :goto_0
    array-length v3, p1

    #@2
    if-ge v1, v3, :cond_0

    #@4
    .line 411
    aget-object v0, p1, v1

    #@6
    .line 413
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v3, "--"

    #@9
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 414
    add-int/lit8 v1, v1, 0x1

    #@11
    .line 421
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    array-length v3, p1

    #@12
    if-ne v1, v3, :cond_2

    #@14
    .line 422
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v4, "Missing classname argument to RuntimeInit!"

    #@19
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v3

    #@1d
    .line 416
    .restart local v0    # "arg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "--"

    #@20
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 410
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 425
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v1, 0x1

    #@2b
    .end local v1    # "curArg":I
    .local v2, "curArg":I
    aget-object v3, p1, v1

    #@2d
    iput-object v3, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    #@2f
    .line 426
    array-length v3, p1

    #@30
    sub-int/2addr v3, v2

    #@31
    new-array v3, v3, [Ljava/lang/String;

    #@33
    iput-object v3, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    #@35
    .line 427
    iget-object v3, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    #@37
    iget-object v4, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    #@39
    array-length v4, v4

    #@3a
    const/4 v5, 0x0

    #@3b
    invoke-static {p1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3e
    .line 408
    return-void
.end method
