.class public final Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
.super Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
.source "UpdatableDriverProto.java"

# interfaces
.implements Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto$Denylists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylists;",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;",
        ">;",
        "Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 708
    # getter for: Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    invoke-static {}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$900()Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    .line 709
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/updatabledriver/UpdatableDriverProto$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/updatabledriver/UpdatableDriverProto$1;

    .line 701
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addAllDenylists(Ljava/lang/Iterable;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;)",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;"
        }
    .end annotation

    .line 793
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroid/updatabledriver/UpdatableDriverProto$Denylist;>;"
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 794
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylists;->addAllDenylists(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1300(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Ljava/lang/Iterable;)V

    .line 795
    return-object p0
.end method

.method public blacklist addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 5
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;

    .line 783
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 784
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    .line 785
    invoke-virtual {p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 784
    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylists;->addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    invoke-static {v0, p1, v1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1200(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 786
    return-object p0
.end method

.method public blacklist addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 765
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 766
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylists;->addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1200(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 767
    return-object p0
.end method

.method public blacklist addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 4
    .param p1, "builderForValue"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;

    .line 774
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 775
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylists;->addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    invoke-static {v0, v1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1100(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 776
    return-object p0
.end method

.method public blacklist addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 3
    .param p1, "value"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 756
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 757
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylists;->addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1100(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 758
    return-object p0
.end method

.method public blacklist clearDenylists()Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 2

    .line 801
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 802
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylists;->clearDenylists()V
    invoke-static {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1400(Landroid/updatabledriver/UpdatableDriverProto$Denylists;)V

    .line 803
    return-object p0
.end method

.method public blacklist getDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 3
    .param p1, "index"    # I

    .line 731
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDenylistsCount()I
    .registers 2

    .line 725
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylistsCount()I

    move-result v0

    return v0
.end method

.method public blacklist getDenylistsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    .line 718
    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylistsList()Ljava/util/List;

    move-result-object v0

    .line 717
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 3
    .param p1, "index"    # I

    .line 809
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 810
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylists;->removeDenylists(I)V
    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1500(Landroid/updatabledriver/UpdatableDriverProto$Denylists;I)V

    .line 811
    return-object p0
.end method

.method public blacklist setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 5
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;

    .line 747
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 748
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    .line 749
    invoke-virtual {p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 748
    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylists;->setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    invoke-static {v0, p1, v1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1000(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 750
    return-object p0
.end method

.method public blacklist setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 738
    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    .line 739
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    # invokes: Landroid/updatabledriver/UpdatableDriverProto$Denylists;->setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1000(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    .line 740
    return-object p0
.end method
