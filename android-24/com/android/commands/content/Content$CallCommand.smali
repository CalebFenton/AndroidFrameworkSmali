.class Lcom/android/commands/content/Content$CallCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallCommand"
.end annotation


# instance fields
.field final mArg:Ljava/lang/String;

.field mExtras:Landroid/os/Bundle;

.field final mMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 482
    invoke-direct {p0, p1, p2}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;I)V

    #@4
    .line 479
    iput-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    #@6
    .line 483
    iput-object p3, p0, Lcom/android/commands/content/Content$CallCommand;->mMethod:Ljava/lang/String;

    #@8
    .line 484
    iput-object p4, p0, Lcom/android/commands/content/Content$CallCommand;->mArg:Ljava/lang/String;

    #@a
    .line 485
    if-eqz p5, :cond_6

    #@c
    .line 486
    new-instance v3, Landroid/os/Bundle;

    #@e
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@11
    iput-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    #@13
    .line 487
    invoke-virtual {p5}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    #@16
    move-result-object v3

    #@17
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_6

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Ljava/lang/String;

    #@27
    .line 488
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    .line 489
    .local v2, "val":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    #@2d
    if-eqz v3, :cond_1

    #@2f
    .line 490
    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    #@31
    check-cast v2, Ljava/lang/String;

    #@33
    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    goto :goto_0

    #@37
    .line 491
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/lang/Float;

    #@39
    if-eqz v3, :cond_2

    #@3b
    .line 492
    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    #@3d
    check-cast v2, Ljava/lang/Float;

    #@3f
    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@42
    move-result v4

    #@43
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@46
    goto :goto_0

    #@47
    .line 493
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Ljava/lang/Double;

    #@49
    if-eqz v3, :cond_3

    #@4b
    .line 494
    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    #@4d
    check-cast v2, Ljava/lang/Double;

    #@4f
    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    #@52
    move-result-wide v4

    #@53
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@56
    goto :goto_0

    #@57
    .line 495
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_3
    instance-of v3, v2, Ljava/lang/Boolean;

    #@59
    if-eqz v3, :cond_4

    #@5b
    .line 496
    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    #@5d
    check-cast v2, Ljava/lang/Boolean;

    #@5f
    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@62
    move-result v4

    #@63
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@66
    goto :goto_0

    #@67
    .line 497
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_4
    instance-of v3, v2, Ljava/lang/Integer;

    #@69
    if-eqz v3, :cond_5

    #@6b
    .line 498
    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    #@6d
    check-cast v2, Ljava/lang/Integer;

    #@6f
    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@72
    move-result v4

    #@73
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@76
    goto :goto_0

    #@77
    .line 499
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_5
    instance-of v3, v2, Ljava/lang/Long;

    #@79
    if-eqz v3, :cond_0

    #@7b
    .line 500
    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    #@7d
    check-cast v2, Ljava/lang/Long;

    #@7f
    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@82
    move-result-wide v4

    #@83
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@86
    goto :goto_0

    #@87
    .line 481
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_6
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 6
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 508
    iget-object v2, p0, Lcom/android/commands/content/Content$CallCommand;->mMethod:Ljava/lang/String;

    #@2
    iget-object v3, p0, Lcom/android/commands/content/Content$CallCommand;->mArg:Ljava/lang/String;

    #@4
    iget-object v4, p0, Lcom/android/commands/content/Content$CallCommand;->mExtras:Landroid/os/Bundle;

    #@6
    const/4 v5, 0x0

    #@7
    invoke-interface {p1, v5, v2, v3, v4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@a
    move-result-object v0

    #@b
    .line 509
    .local v0, "result":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    #@e
    move-result v1

    #@f
    .line 510
    .local v1, "size":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Result: "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 507
    return-void
.end method
