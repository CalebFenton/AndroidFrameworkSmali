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
            "Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;",
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
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 143
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    #@6
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    #@d
    .line 149
    return-void
.end method


# virtual methods
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
    .line 165
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap2(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 166
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
    .line 168
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInt(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method addRuleFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 273
    .local v2, "rule":I
    const/4 v4, 0x1

    #@5
    if-eq v2, v4, :cond_0

    #@7
    const v4, 0x8001

    #@a
    if-ne v2, v4, :cond_1

    #@c
    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v3

    #@10
    .line 275
    .local v3, "usage":I
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    #@12
    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@15
    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@1c
    move-result-object v0

    #@1d
    .line 286
    .end local v3    # "usage":I
    .local v0, "attr":Landroid/media/AudioAttributes;
    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInt(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    #@20
    move-result-object v4

    #@21
    return-object v4

    #@22
    .line 277
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_1
    const/4 v4, 0x2

    #@23
    if-eq v2, v4, :cond_2

    #@25
    .line 278
    const v4, 0x8002

    #@28
    if-ne v2, v4, :cond_3

    #@2a
    .line 279
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v1

    #@2e
    .line 280
    .local v1, "preset":I
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    #@30
    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@33
    invoke-virtual {v4, v1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@3a
    move-result-object v0

    #@3b
    .restart local v0    # "attr":Landroid/media/AudioAttributes;
    goto :goto_0

    #@3c
    .line 283
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    .end local v1    # "preset":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    .line 284
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@41
    new-instance v5, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v6, "Illegal rule value "

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    const-string/jumbo v6, " in parcel"

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v4
.end method

.method addRuleInt(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 6
    .param p1, "attrToMatch"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 212
    if-nez p1, :cond_0

    #@4
    .line 213
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v3, "Illegal null AudioAttributes argument"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 215
    :cond_0
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap1(I)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_1

    #@13
    .line 216
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Illegal rule value "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 220
    :cond_1
    iget v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    #@2f
    const/4 v3, -0x1

    #@30
    if-ne v2, v3, :cond_6

    #@32
    .line 221
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap0(I)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_5

    #@38
    .line 222
    iput v4, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    #@3a
    .line 232
    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    #@3c
    monitor-enter v3

    #@3d
    .line 233
    :try_start_0
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v0

    #@43
    .line 234
    .local v0, "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_d

    #@49
    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v1

    #@4d
    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;

    #@4f
    .line 236
    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    if-eq p2, v5, :cond_4

    #@51
    .line 237
    const v2, 0x8001

    #@54
    if-ne p2, v2, :cond_a

    #@56
    .line 239
    :cond_4
    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    #@58
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    #@5b
    move-result v2

    #@5c
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    #@5f
    move-result v4

    #@60
    if-ne v2, v4, :cond_3

    #@62
    .line 240
    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    if-ne v2, p2, :cond_9

    #@66
    monitor-exit v3

    #@67
    .line 242
    return-object p0

    #@68
    .line 224
    .end local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    :cond_5
    iput v5, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    #@6a
    goto :goto_0

    #@6b
    .line 226
    :cond_6
    iget v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    #@6d
    if-nez v2, :cond_7

    #@6f
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap0(I)Z

    #@72
    move-result v2

    #@73
    if-eqz v2, :cond_8

    #@75
    .line 227
    :cond_7
    iget v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    #@77
    if-ne v2, v5, :cond_2

    #@79
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap0(I)Z

    #@7c
    move-result v2

    #@7d
    .line 226
    if-eqz v2, :cond_2

    #@7f
    .line 229
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@81
    const-string/jumbo v3, "Incompatible rule for mix"

    #@84
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@87
    throw v2

    #@88
    .line 245
    .restart local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    .restart local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    :cond_9
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8a
    new-instance v4, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v5, "Contradictory rule exists for "

    #@92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v4

    #@96
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v4

    #@9e
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a2
    .line 232
    .end local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    :catchall_0
    move-exception v2

    #@a3
    monitor-exit v3

    #@a4
    throw v2

    #@a5
    .line 249
    .restart local v0    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    .restart local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    :cond_a
    const/4 v2, 0x2

    #@a6
    if-eq p2, v2, :cond_b

    #@a8
    .line 250
    const v2, 0x8002

    #@ab
    if-ne p2, v2, :cond_3

    #@ad
    .line 252
    :cond_b
    :try_start_2
    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    #@af
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@b2
    move-result v2

    #@b3
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@b6
    move-result v4

    #@b7
    if-ne v2, v4, :cond_3

    #@b9
    .line 253
    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@bb
    if-ne v2, p2, :cond_c

    #@bd
    monitor-exit v3

    #@be
    .line 255
    return-object p0

    #@bf
    .line 258
    :cond_c
    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c1
    new-instance v4, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v5, "Contradictory rule exists for "

    #@c9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v4

    #@cd
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v4

    #@d1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v4

    #@d5
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d8
    throw v2

    #@d9
    .line 265
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    :cond_d
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    #@db
    new-instance v4, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;

    #@dd
    invoke-direct {v4, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;-><init>(Landroid/media/AudioAttributes;I)V

    #@e0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e3
    monitor-exit v3

    #@e4
    .line 267
    return-object p0
.end method

.method public build()Landroid/media/audiopolicy/AudioMixingRule;
    .locals 4

    #@0
    .prologue
    .line 295
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
    .line 193
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-wrap2(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 194
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
    .line 196
    :cond_0
    const v0, 0x8000

    #@23
    or-int/2addr v0, p2

    #@24
    invoke-virtual {p0, p1, v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInt(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method
