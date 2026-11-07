.class Ljava/io/BufferedReader$1;
.super Ljava/lang/Object;
.source "BufferedReader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist nextLine:Ljava/lang/String;

.field final synthetic blacklist this$0:Ljava/io/BufferedReader;


# direct methods
.method constructor blacklist <init>(Ljava/io/BufferedReader;)V
    .registers 3
    .param p1, "this$0"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 576
    iput-object p1, p0, Ljava/io/BufferedReader$1;->this$0:Ljava/io/BufferedReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 581
    iget-object v0, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 582
    return v1

    .line 585
    :cond_6
    :try_start_6
    iget-object v0, p0, Ljava/io/BufferedReader$1;->this$0:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    .line 586
    iget-object v0, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_15

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1

    .line 587
    :catch_15
    move-exception v0

    .line 588
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 576
    invoke-virtual {p0}, Ljava/io/BufferedReader$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/lang/String;
    .registers 3

    .line 595
    iget-object v0, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljava/io/BufferedReader$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 600
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 596
    :cond_11
    :goto_11
    iget-object v0, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    .line 597
    .local v0, "line":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    .line 598
    return-object v0
.end method
