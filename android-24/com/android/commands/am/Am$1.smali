.class Lcom/android/commands/am/Am$1;
.super Ljava/lang/Object;
.source "Am.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/am/Am;->makeIntent(I)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/am/Am;


# direct methods
.method constructor <init>(Lcom/android/commands/am/Am;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/am/Am;

    #@0
    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .locals 4
    .param p1, "opt"    # Ljava/lang/String;
    .param p2, "cmd"    # Landroid/os/ShellCommand;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 492
    const-string/jumbo v0, "-D"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 493
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@d
    invoke-static {v0}, Lcom/android/commands/am/Am;->-get1(Lcom/android/commands/am/Am;)I

    #@10
    move-result v1

    #@11
    or-int/lit8 v1, v1, 0x2

    #@13
    invoke-static {v0, v1}, Lcom/android/commands/am/Am;->-set6(Lcom/android/commands/am/Am;I)I

    #@16
    .line 521
    :goto_0
    return v3

    #@17
    .line 494
    :cond_0
    const-string/jumbo v0, "-N"

    #@1a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 495
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@22
    invoke-static {v0}, Lcom/android/commands/am/Am;->-get1(Lcom/android/commands/am/Am;)I

    #@25
    move-result v1

    #@26
    or-int/lit8 v1, v1, 0x8

    #@28
    invoke-static {v0, v1}, Lcom/android/commands/am/Am;->-set6(Lcom/android/commands/am/Am;I)I

    #@2b
    goto :goto_0

    #@2c
    .line 496
    :cond_1
    const-string/jumbo v0, "-W"

    #@2f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_2

    #@35
    .line 497
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@37
    invoke-static {v0, v3}, Lcom/android/commands/am/Am;->-set9(Lcom/android/commands/am/Am;Z)Z

    #@3a
    goto :goto_0

    #@3b
    .line 498
    :cond_2
    const-string/jumbo v0, "-P"

    #@3e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_3

    #@44
    .line 499
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@46
    iget-object v1, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@48
    invoke-virtual {v1}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-static {v0, v1}, Lcom/android/commands/am/Am;->-set1(Lcom/android/commands/am/Am;Ljava/lang/String;)Ljava/lang/String;

    #@4f
    .line 500
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@51
    invoke-static {v0, v3}, Lcom/android/commands/am/Am;->-set0(Lcom/android/commands/am/Am;Z)Z

    #@54
    goto :goto_0

    #@55
    .line 501
    :cond_3
    const-string/jumbo v0, "--start-profiler"

    #@58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_4

    #@5e
    .line 502
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@60
    iget-object v1, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@62
    invoke-virtual {v1}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-static {v0, v1}, Lcom/android/commands/am/Am;->-set1(Lcom/android/commands/am/Am;Ljava/lang/String;)Ljava/lang/String;

    #@69
    .line 503
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@6b
    invoke-static {v0, v2}, Lcom/android/commands/am/Am;->-set0(Lcom/android/commands/am/Am;Z)Z

    #@6e
    goto :goto_0

    #@6f
    .line 504
    :cond_4
    const-string/jumbo v0, "--sampling"

    #@72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v0

    #@76
    if-eqz v0, :cond_5

    #@78
    .line 505
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@7a
    iget-object v1, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@7c
    invoke-virtual {v1}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@83
    move-result v1

    #@84
    invoke-static {v0, v1}, Lcom/android/commands/am/Am;->-set4(Lcom/android/commands/am/Am;I)I

    #@87
    goto :goto_0

    #@88
    .line 506
    :cond_5
    const-string/jumbo v0, "-R"

    #@8b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v0

    #@8f
    if-eqz v0, :cond_6

    #@91
    .line 507
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@93
    iget-object v1, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@95
    invoke-virtual {v1}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9c
    move-result v1

    #@9d
    invoke-static {v0, v1}, Lcom/android/commands/am/Am;->-set3(Lcom/android/commands/am/Am;I)I

    #@a0
    goto/16 :goto_0

    #@a2
    .line 508
    :cond_6
    const-string/jumbo v0, "-S"

    #@a5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v0

    #@a9
    if-eqz v0, :cond_7

    #@ab
    .line 509
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@ad
    invoke-static {v0, v3}, Lcom/android/commands/am/Am;->-set7(Lcom/android/commands/am/Am;Z)Z

    #@b0
    goto/16 :goto_0

    #@b2
    .line 510
    :cond_7
    const-string/jumbo v0, "--track-allocation"

    #@b5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v0

    #@b9
    if-eqz v0, :cond_8

    #@bb
    .line 511
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@bd
    invoke-static {v0}, Lcom/android/commands/am/Am;->-get1(Lcom/android/commands/am/Am;)I

    #@c0
    move-result v1

    #@c1
    or-int/lit8 v1, v1, 0x4

    #@c3
    invoke-static {v0, v1}, Lcom/android/commands/am/Am;->-set6(Lcom/android/commands/am/Am;I)I

    #@c6
    goto/16 :goto_0

    #@c8
    .line 512
    :cond_8
    const-string/jumbo v0, "--user"

    #@cb
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v0

    #@cf
    if-eqz v0, :cond_9

    #@d1
    .line 513
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@d3
    iget-object v1, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@d5
    iget-object v2, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@d7
    invoke-virtual {v2}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@da
    move-result-object v2

    #@db
    invoke-virtual {v1, v2}, Lcom/android/commands/am/Am;->parseUserArg(Ljava/lang/String;)I

    #@de
    move-result v1

    #@df
    invoke-static {v0, v1}, Lcom/android/commands/am/Am;->-set8(Lcom/android/commands/am/Am;I)I

    #@e2
    goto/16 :goto_0

    #@e4
    .line 514
    :cond_9
    const-string/jumbo v0, "--receiver-permission"

    #@e7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ea
    move-result v0

    #@eb
    if-eqz v0, :cond_a

    #@ed
    .line 515
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@ef
    iget-object v1, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@f1
    invoke-virtual {v1}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@f4
    move-result-object v1

    #@f5
    invoke-static {v0, v1}, Lcom/android/commands/am/Am;->-set2(Lcom/android/commands/am/Am;Ljava/lang/String;)Ljava/lang/String;

    #@f8
    goto/16 :goto_0

    #@fa
    .line 516
    :cond_a
    const-string/jumbo v0, "--stack"

    #@fd
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@100
    move-result v0

    #@101
    if-eqz v0, :cond_b

    #@103
    .line 517
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@105
    iget-object v1, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@107
    invoke-virtual {v1}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    #@10a
    move-result-object v1

    #@10b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10e
    move-result v1

    #@10f
    invoke-static {v0, v1}, Lcom/android/commands/am/Am;->-set5(Lcom/android/commands/am/Am;I)I

    #@112
    goto/16 :goto_0

    #@114
    .line 519
    :cond_b
    return v2
.end method
