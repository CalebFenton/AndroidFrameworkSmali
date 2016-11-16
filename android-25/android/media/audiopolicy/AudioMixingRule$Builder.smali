.class public Landroid/media/audiopolicy/AudioMixingRule$Builder;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMixingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetMixType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 209
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    #@6
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    #@d
    .line 215
    return-void
.end method

.method private addRuleInternal(Landroid/media/AudioAttributes;Ljava/lang/Integer;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 7
    .param p1, "attrToMatch"    # Landroid/media/AudioAttributes;
    .param p2, "intProp"    # Ljava/lang/Integer;
    .param p3, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 369
    iget v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    #@4
    const/4 v4, -0x1

    #@5
    if-ne v3, v4, :cond_3

    #@7
    .line 370
    invoke-static {p3}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap1(I)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 371
    iput v5, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    #@f
    .line 380
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    #@11
    monitor-enter v4

    #@12
    .line 381
    :try_start_0
    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v0

    #@18
    .line 382
    .local v0, "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    const v3, -0x8001

    #@1b
    and-int v2, p3, v3

    #@1d
    .line 383
    .local v2, "match_rule":I
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_9

    #@23
    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    #@29
    .line 385
    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    packed-switch v2, :pswitch_data_0

    #@2c
    :pswitch_0
    goto :goto_1

    #@2d
    .line 388
    :pswitch_1
    iget-object v3, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    #@2f
    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    #@32
    move-result v3

    #@33
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    #@36
    move-result v5

    #@37
    if-ne v3, v5, :cond_1

    #@39
    .line 389
    iget v3, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    if-ne v3, p3, :cond_6

    #@3d
    monitor-exit v4

    #@3e
    .line 391
    return-object p0

    #@3f
    .line 373
    .end local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    .end local v2    # "match_rule":I
    :cond_2
    iput v6, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    #@41
    goto :goto_0

    #@42
    .line 375
    :cond_3
    iget v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    #@44
    if-nez v3, :cond_4

    #@46
    invoke-static {p3}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap1(I)Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_5

    #@4c
    .line 376
    :cond_4
    iget v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    #@4e
    if-ne v3, v6, :cond_0

    #@50
    invoke-static {p3}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap1(I)Z

    #@53
    move-result v3

    #@54
    .line 375
    if-eqz v3, :cond_0

    #@56
    .line 378
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@58
    const-string/jumbo v4, "Incompatible rule for mix"

    #@5b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v3

    #@5f
    .line 395
    .restart local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    .restart local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    .restart local v2    # "match_rule":I
    :cond_6
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@61
    new-instance v5, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v6, "Contradictory rule exists for "

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@78
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@79
    .line 380
    .end local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    .end local v2    # "match_rule":I
    :catchall_0
    move-exception v3

    #@7a
    monitor-exit v4

    #@7b
    throw v3

    #@7c
    .line 402
    .restart local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    .restart local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    .restart local v2    # "match_rule":I
    :pswitch_2
    :try_start_2
    iget-object v3, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    #@7e
    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@81
    move-result v3

    #@82
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@85
    move-result v5

    #@86
    if-ne v3, v5, :cond_1

    #@88
    .line 403
    iget v3, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8a
    if-ne v3, p3, :cond_7

    #@8c
    monitor-exit v4

    #@8d
    .line 405
    return-object p0

    #@8e
    .line 409
    :cond_7
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@90
    new-instance v5, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v6, "Contradictory rule exists for "

    #@98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v5

    #@a4
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a7
    throw v3

    #@a8
    .line 416
    :pswitch_3
    iget v3, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mIntProp:I

    #@aa
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@ad
    move-result v5

    #@ae
    if-ne v3, v5, :cond_1

    #@b0
    .line 417
    iget v3, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b2
    if-ne v3, p3, :cond_8

    #@b4
    monitor-exit v4

    #@b5
    .line 419
    return-object p0

    #@b6
    .line 423
    :cond_8
    :try_start_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@b8
    new-instance v5, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v6, "Contradictory rule exists for UID "

    #@c0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v5

    #@c4
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v5

    #@c8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v5

    #@cc
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cf
    throw v3

    #@d0
    .line 431
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    :cond_9
    packed-switch v2, :pswitch_data_1

    #@d3
    .line 440
    :pswitch_4
    new-instance v3, Ljava/lang/IllegalStateException;

    #@d5
    const-string/jumbo v5, "Unreachable code in addRuleInternal()"

    #@d8
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@db
    throw v3

    #@dc
    .line 434
    :pswitch_5
    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    #@de
    new-instance v5, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    #@e0
    invoke-direct {v5, p1, p3}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;-><init>(Landroid/media/AudioAttributes;I)V

    #@e3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e6
    :goto_2
    monitor-exit v4

    #@e7
    .line 443
    return-object p0

    #@e8
    .line 437
    :pswitch_6
    :try_start_5
    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    #@ea
    new-instance v5, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    #@ec
    invoke-direct {v5, p2, p3}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;-><init>(Ljava/lang/Integer;I)V

    #@ef
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@f2
    goto :goto_2

    #@f3
    .line 385
    nop

    #@f4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    #@100
    .line 431
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 4
    .param p1, "rule"    # I
    .param p2, "property"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 328
    if-nez p2, :cond_0

    #@3
    .line 329
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "Illegal null argument for mixing rule"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 331
    :cond_0
    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap3(I)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 332
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Illegal rule value "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 334
    :cond_1
    const v1, -0x8001

    #@2f
    and-int v0, p1, v1

    #@31
    .line 335
    .local v0, "match_rule":I
    invoke-static {v0}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap0(I)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_3

    #@37
    .line 336
    instance-of v1, p2, Landroid/media/AudioAttributes;

    #@39
    if-nez v1, :cond_2

    #@3b
    .line 337
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@3d
    const-string/jumbo v2, "Invalid AudioAttributes argument"

    #@40
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v1

    #@44
    .line 339
    :cond_2
    nop

    #@45
    nop

    #@46
    .end local p2    # "property":Ljava/lang/Object;
    invoke-direct {p0, p2, v2, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/AudioAttributes;Ljava/lang/Integer;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    #@49
    move-result-object v1

    #@4a
    return-object v1

    #@4b
    .line 342
    .restart local p2    # "property":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, Ljava/lang/Integer;

    #@4d
    if-nez v1, :cond_4

    #@4f
    .line 343
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@51
    const-string/jumbo v2, "Invalid Integer argument"

    #@54
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v1

    #@58
    .line 345
    :cond_4
    nop

    #@59
    nop

    #@5a
    .end local p2    # "property":Ljava/lang/Object;
    invoke-direct {p0, v2, p2, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/AudioAttributes;Ljava/lang/Integer;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    #@5d
    move-result-object v1

    #@5e
    return-object v1
.end method


# virtual methods
.method public addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .param p1, "rule"    # I
    .param p2, "property"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap4(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Illegal rule value "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 285
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .param p1, "attrToMatch"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap2(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Illegal rule value "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 235
    :cond_0
    invoke-direct {p0, p2, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method addRuleFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v4

    #@4
    .line 448
    .local v4, "rule":I
    const v6, -0x8001

    #@7
    and-int v2, v4, v6

    #@9
    .line 449
    .local v2, "match_rule":I
    const/4 v0, 0x0

    #@a
    .line 450
    .local v0, "attr":Landroid/media/AudioAttributes;
    const/4 v1, 0x0

    #@b
    .line 451
    .local v1, "intProp":Ljava/lang/Integer;
    packed-switch v2, :pswitch_data_0

    #@e
    .line 467
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    .line 468
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v7, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v8, "Illegal rule value "

    #@1b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    const-string/jumbo v8, " in parcel"

    #@26
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v7

    #@2e
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v6

    #@32
    .line 453
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v5

    #@36
    .line 454
    .local v5, "usage":I
    new-instance v6, Landroid/media/AudioAttributes$Builder;

    #@38
    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@3b
    invoke-virtual {v6, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@42
    move-result-object v0

    #@43
    .line 470
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    .end local v1    # "intProp":Ljava/lang/Integer;
    .end local v5    # "usage":I
    :goto_0
    invoke-direct {p0, v0, v1, v4}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/AudioAttributes;Ljava/lang/Integer;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    #@46
    move-result-object v6

    #@47
    return-object v6

    #@48
    .line 458
    .restart local v0    # "attr":Landroid/media/AudioAttributes;
    .restart local v1    # "intProp":Ljava/lang/Integer;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v3

    #@4c
    .line 459
    .local v3, "preset":I
    new-instance v6, Landroid/media/AudioAttributes$Builder;

    #@4e
    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@51
    invoke-virtual {v6, v3}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@58
    move-result-object v0

    #@59
    .local v0, "attr":Landroid/media/AudioAttributes;
    goto :goto_0

    #@5a
    .line 463
    .end local v3    # "preset":I
    .local v0, "attr":Landroid/media/AudioAttributes;
    :pswitch_3
    new-instance v1, Ljava/lang/Integer;

    #@5c
    .end local v1    # "intProp":Ljava/lang/Integer;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v6

    #@60
    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    #@63
    .line 464
    .local v1, "intProp":Ljava/lang/Integer;
    goto :goto_0

    #@64
    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public build()Landroid/media/audiopolicy/AudioMixingRule;
    .locals 4

    #@0
    .prologue
    .line 479
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule;

    #@2
    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    #@4
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v0, v1, v2, v3}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(ILjava/util/ArrayList;Landroid/media/audiopolicy/AudioMixingRule;)V

    #@a
    return-object v0
.end method

.method public excludeMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .param p1, "rule"    # I
    .param p2, "property"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap4(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Illegal rule value "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 315
    :cond_0
    const v0, 0x8000

    #@23
    or-int/2addr v0, p1

    #@24
    invoke-direct {p0, v0, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public excludeRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .param p1, "attrToMatch"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 261
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap2(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Illegal rule value "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 264
    :cond_0
    const v0, 0x8000

    #@23
    or-int/2addr v0, p2

    #@24
    invoke-direct {p0, v0, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method
