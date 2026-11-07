.class public final Landroid/service/notification/ZenPolicy$Builder;
.super Ljava/lang/Object;
.source "ZenPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mZenPolicy:Landroid/service/notification/ZenPolicy;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    new-instance v0, Landroid/service/notification/ZenPolicy;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 652
    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/notification/ZenPolicy;)V
    .registers 3
    .param p1, "policy"    # Landroid/service/notification/ZenPolicy;

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    if-eqz p1, :cond_c

    .line 661
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_13

    .line 663
    :cond_c
    new-instance v0, Landroid/service/notification/ZenPolicy;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 665
    :goto_13
    return-void
.end method


# virtual methods
.method public whitelist allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "allow"    # Z

    .line 866
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    .line 867
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 866
    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 868
    return-object p0
.end method

.method public whitelist allowAllSounds()Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    .line 681
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1e

    .line 682
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 684
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    .line 685
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    .line 686
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    .line 687
    return-object p0
.end method

.method public whitelist allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "audienceType"    # I

    .line 832
    const/4 v0, 0x3

    if-nez p1, :cond_8

    .line 833
    invoke-virtual {p0, v0}, Landroid/service/notification/ZenPolicy$Builder;->unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    return-object v0

    .line 836
    :cond_8
    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne p1, v1, :cond_1a

    .line 837
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 838
    :cond_1a
    const/4 v1, 0x1

    if-eq p1, v1, :cond_23

    if-eq p1, v2, :cond_23

    if-ne p1, v0, :cond_22

    goto :goto_23

    .line 842
    :cond_22
    return-object p0

    .line 840
    :cond_23
    :goto_23
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 845
    :goto_30
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    .line 846
    return-object p0
.end method

.method public blacklist allowCategory(IZ)Landroid/service/notification/ZenPolicy$Builder;
    .registers 3
    .param p1, "category"    # I
    .param p2, "allow"    # Z

    .line 897
    packed-switch p1, :pswitch_data_1e

    :pswitch_3
    goto :goto_1c

    .line 905
    :pswitch_4
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 906
    goto :goto_1c

    .line 902
    :pswitch_8
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 903
    goto :goto_1c

    .line 899
    :pswitch_c
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 900
    goto :goto_1c

    .line 914
    :pswitch_10
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_1c

    .line 911
    :pswitch_14
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 912
    goto :goto_1c

    .line 908
    :pswitch_18
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 909
    nop

    .line 917
    :goto_1c
    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist allowChannels(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 3
    .param p1, "channelType"    # I

    .line 1033
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmAllowChannels(Landroid/service/notification/ZenPolicy;I)V

    .line 1034
    return-object p0
.end method

.method public whitelist allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "audienceType"    # I

    .line 784
    const/16 v0, 0x8

    if-nez p1, :cond_9

    .line 785
    invoke-virtual {p0, v0}, Landroid/service/notification/ZenPolicy$Builder;->unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    return-object v0

    .line 788
    :cond_9
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p1, v1, :cond_1b

    .line 789
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 790
    :cond_1b
    const/4 v1, 0x1

    if-eq p1, v1, :cond_22

    if-ne p1, v2, :cond_21

    goto :goto_22

    .line 794
    :cond_21
    return-object p0

    .line 792
    :cond_22
    :goto_22
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 797
    :goto_2f
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    .line 798
    return-object p0
.end method

.method public whitelist allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "allow"    # Z

    .line 771
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    .line 772
    const/4 v1, 0x1

    if-eqz p1, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    const/4 v2, 0x2

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 771
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 773
    return-object p0
.end method

.method public whitelist allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "allow"    # Z

    .line 877
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    .line 878
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 877
    const/4 v2, 0x6

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 879
    return-object p0
.end method

.method public whitelist allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "audienceType"    # I

    .line 808
    const/4 v0, 0x2

    if-nez p1, :cond_8

    .line 809
    invoke-virtual {p0, v0}, Landroid/service/notification/ZenPolicy$Builder;->unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    return-object v0

    .line 812
    :cond_8
    const/4 v1, 0x4

    if-ne p1, v1, :cond_19

    .line 813
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 814
    :cond_19
    const/4 v1, 0x1

    if-eq p1, v1, :cond_23

    if-eq p1, v0, :cond_23

    const/4 v2, 0x3

    if-ne p1, v2, :cond_22

    goto :goto_23

    .line 818
    :cond_22
    return-object p0

    .line 816
    :cond_23
    :goto_23
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 821
    :goto_30
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    .line 822
    return-object p0
.end method

.method public whitelist allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 4
    .param p1, "allow"    # Z

    .line 1027
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x2

    :goto_7
    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmAllowChannels(Landroid/service/notification/ZenPolicy;I)V

    .line 1028
    return-object p0
.end method

.method public whitelist allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "allow"    # Z

    .line 761
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    .line 762
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 761
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 763
    return-object p0
.end method

.method public whitelist allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "allow"    # Z

    .line 855
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    .line 856
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 855
    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 857
    return-object p0
.end method

.method public whitelist allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "allow"    # Z

    .line 887
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    .line 888
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 887
    const/4 v2, 0x7

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 889
    return-object p0
.end method

.method public whitelist build()Landroid/service/notification/ZenPolicy;
    .registers 8

    .line 671
    new-instance v0, Landroid/service/notification/ZenPolicy;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v3}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v3}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityMessages(Landroid/service/notification/ZenPolicy;)I

    move-result v3

    iget-object v4, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v4}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCalls(Landroid/service/notification/ZenPolicy;)I

    move-result v4

    iget-object v5, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v5}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmConversationSenders(Landroid/service/notification/ZenPolicy;)I

    move-result v5

    iget-object v6, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v6}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmAllowChannels(Landroid/service/notification/ZenPolicy;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/service/notification/ZenPolicy;-><init>(Ljava/util/List;Ljava/util/List;IIII)V

    return-object v0
.end method

.method public whitelist disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    .line 698
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 699
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 701
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    .line 702
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    .line 703
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    .line 704
    return-object p0
.end method

.method public whitelist hideAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    .line 721
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 722
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 724
    .end local v0    # "i":I
    :cond_1e
    return-object p0
.end method

.method public whitelist showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;
    .registers 4

    .line 711
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 712
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 714
    .end local v0    # "i":I
    :cond_1e
    return-object p0
.end method

.method public whitelist showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 964
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    .line 965
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 964
    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 966
    return-object p0
.end method

.method public whitelist showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 925
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    .line 926
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 925
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 927
    return-object p0
.end method

.method public whitelist showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 974
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    .line 975
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 974
    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 976
    return-object p0
.end method

.method public whitelist showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 985
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    .line 986
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 985
    const/4 v2, 0x6

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 987
    return-object p0
.end method

.method public whitelist showLights(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 935
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    .line 936
    const/4 v1, 0x1

    if-eqz p1, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    const/4 v2, 0x2

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 935
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 937
    return-object p0
.end method

.method public whitelist showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 944
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    .line 945
    const/4 v1, 0x2

    if-eqz p1, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 944
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 946
    return-object p0
.end method

.method public whitelist showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "show"    # Z

    .line 954
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    .line 955
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 954
    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 956
    return-object p0
.end method

.method public blacklist showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;
    .registers 3
    .param p1, "effect"    # I
    .param p2, "show"    # Z

    .line 996
    packed-switch p1, :pswitch_data_22

    goto :goto_20

    .line 1016
    :pswitch_4
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_20

    .line 1013
    :pswitch_8
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1014
    goto :goto_20

    .line 1010
    :pswitch_c
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1011
    goto :goto_20

    .line 1007
    :pswitch_10
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1008
    goto :goto_20

    .line 1004
    :pswitch_14
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1005
    goto :goto_20

    .line 1001
    :pswitch_18
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1002
    goto :goto_20

    .line 998
    :pswitch_1c
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 999
    nop

    .line 1019
    :goto_20
    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 5
    .param p1, "category"    # I

    .line 733
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 735
    const/4 v0, 0x2

    if-ne p1, v0, :cond_17

    .line 736
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    goto :goto_29

    .line 737
    :cond_17
    const/4 v0, 0x3

    if-ne p1, v0, :cond_20

    .line 738
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    goto :goto_29

    .line 739
    :cond_20
    const/16 v0, 0x8

    if-ne p1, v0, :cond_29

    .line 740
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    .line 743
    :cond_29
    :goto_29
    return-object p0
.end method

.method public blacklist unsetVisualEffect(I)Landroid/service/notification/ZenPolicy$Builder;
    .registers 4
    .param p1, "effect"    # I

    .line 752
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 753
    return-object p0
.end method
