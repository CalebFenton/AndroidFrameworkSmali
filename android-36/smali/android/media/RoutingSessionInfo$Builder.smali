.class public final Landroid/media/RoutingSessionInfo$Builder;
.super Ljava/lang/Object;
.source "RoutingSessionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RoutingSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mClientPackageName:Ljava/lang/String;

.field private blacklist mControlHints:Landroid/os/Bundle;

.field private final blacklist mDeselectableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsSystemSession:Z

.field private blacklist mName:Ljava/lang/CharSequence;

.field private final blacklist mOriginalId:Ljava/lang/String;

.field private blacklist mOwnerPackageName:Ljava/lang/String;

.field private blacklist mProviderId:Ljava/lang/String;

.field private final blacklist mSelectableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSelectedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransferInitiatorPackageName:Ljava/lang/String;

.field private blacklist mTransferInitiatorUserHandle:Landroid/os/UserHandle;

.field private blacklist mTransferReason:I

.field private final blacklist mTransferableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVolume:I

.field private blacklist mVolumeHandling:I

.field private blacklist mVolumeMax:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientPackageName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mClientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControlHints(Landroid/media/RoutingSessionInfo$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mControlHints:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeselectableRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSystemSession(Landroid/media/RoutingSessionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mIsSystemSession:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalId(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mOriginalId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOwnerPackageName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mOwnerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviderId(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mProviderId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectableRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectedRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferInitiatorPackageName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferInitiatorPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferInitiatorUserHandle(Landroid/media/RoutingSessionInfo$Builder;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferReason(Landroid/media/RoutingSessionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferableRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolume(Landroid/media/RoutingSessionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolume:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeHandling(Landroid/media/RoutingSessionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeMax(Landroid/media/RoutingSessionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeMax:I

    return p0
.end method

.method public constructor whitelist <init>(Landroid/media/RoutingSessionInfo;)V
    .registers 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 652
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)V
    .registers 5
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "originalId"    # Ljava/lang/String;

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    .line 615
    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferReason:I

    .line 662
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 664
    iput-object p2, p0, Landroid/media/RoutingSessionInfo$Builder;->mOriginalId:Ljava/lang/String;

    .line 665
    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mName:Ljava/lang/CharSequence;

    .line 666
    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mClientPackageName:Ljava/lang/String;

    .line 667
    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mProviderId:Ljava/lang/String;

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    .line 674
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mProviderId:Ljava/lang/String;

    if-eqz v0, :cond_6b

    .line 676
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    new-instance v1, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 677
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    new-instance v1, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 678
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    new-instance v1, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 679
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    new-instance v1, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 682
    :cond_6b
    iget v0, p1, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    .line 683
    iget v0, p1, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeMax:I

    .line 684
    iget v0, p1, Landroid/media/RoutingSessionInfo;->mVolume:I

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolume:I

    .line 686
    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mControlHints:Landroid/os/Bundle;

    .line 687
    iget-boolean v0, p1, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    iput-boolean v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mIsSystemSession:Z

    .line 688
    iget v0, p1, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferReason:I

    .line 689
    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    .line 690
    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferInitiatorPackageName:Ljava/lang/String;

    .line 691
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "originalId"    # Ljava/lang/String;
    .param p2, "clientPackageName"    # Ljava/lang/String;

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    .line 615
    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferReason:I

    .line 632
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 636
    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mOriginalId:Ljava/lang/String;

    .line 637
    nop

    .line 638
    const-string v0, "clientPackageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mClientPackageName:Ljava/lang/String;

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    .line 643
    return-void

    .line 633
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addDeselectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 4
    .param p1, "routeId"    # Ljava/lang/String;

    .line 818
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 821
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    return-object p0

    .line 819
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addSelectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 4
    .param p1, "routeId"    # Ljava/lang/String;

    .line 785
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 788
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    return-object p0

    .line 786
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 4
    .param p1, "routeId"    # Ljava/lang/String;

    .line 752
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 755
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    return-object p0

    .line 753
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 4
    .param p1, "routeId"    # Ljava/lang/String;

    .line 851
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 854
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    return-object p0

    .line 852
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/media/RoutingSessionInfo;
    .registers 3

    .line 963
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 966
    new-instance v0, Landroid/media/RoutingSessionInfo;

    invoke-direct {v0, p0}, Landroid/media/RoutingSessionInfo;-><init>(Landroid/media/RoutingSessionInfo$Builder;)V

    return-object v0

    .line 964
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectedRoutes must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearDeselectableRoutes()Landroid/media/RoutingSessionInfo$Builder;
    .registers 2

    .line 809
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 810
    return-object p0
.end method

.method public whitelist clearSelectableRoutes()Landroid/media/RoutingSessionInfo$Builder;
    .registers 2

    .line 776
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 777
    return-object p0
.end method

.method public whitelist clearSelectedRoutes()Landroid/media/RoutingSessionInfo$Builder;
    .registers 2

    .line 743
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 744
    return-object p0
.end method

.method public whitelist clearTransferableRoutes()Landroid/media/RoutingSessionInfo$Builder;
    .registers 2

    .line 842
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 843
    return-object p0
.end method

.method public whitelist removeDeselectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 4
    .param p1, "routeId"    # Ljava/lang/String;

    .line 830
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 833
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 834
    return-object p0

    .line 831
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeSelectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 4
    .param p1, "routeId"    # Ljava/lang/String;

    .line 797
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 800
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 801
    return-object p0

    .line 798
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 4
    .param p1, "routeId"    # Ljava/lang/String;

    .line 764
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 767
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 768
    return-object p0

    .line 765
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 4
    .param p1, "routeId"    # Ljava/lang/String;

    .line 863
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 866
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 867
    return-object p0

    .line 864
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 720
    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mClientPackageName:Ljava/lang/String;

    .line 721
    return-object p0
.end method

.method public whitelist setControlHints(Landroid/os/Bundle;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 2
    .param p1, "controlHints"    # Landroid/os/Bundle;

    .line 905
    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mControlHints:Landroid/os/Bundle;

    .line 906
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/CharSequence;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 698
    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mName:Ljava/lang/CharSequence;

    .line 699
    return-object p0
.end method

.method public blacklist setOwnerPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 709
    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mOwnerPackageName:Ljava/lang/String;

    .line 710
    return-object p0
.end method

.method public blacklist setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 4
    .param p1, "providerId"    # Ljava/lang/String;

    .line 731
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 734
    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mProviderId:Ljava/lang/String;

    .line 735
    return-object p0

    .line 732
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "providerId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;
    .registers 2
    .param p1, "isSystemSession"    # Z

    .line 915
    iput-boolean p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mIsSystemSession:Z

    .line 916
    return-object p0
.end method

.method public whitelist setTransferInitiator(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .registers 3
    .param p1, "transferInitiatorUserHandle"    # Landroid/os/UserHandle;
    .param p2, "transferInitiatorPackageName"    # Ljava/lang/String;

    .line 951
    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    .line 952
    iput-object p2, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferInitiatorPackageName:Ljava/lang/String;

    .line 953
    return-object p0
.end method

.method public whitelist setTransferReason(I)Landroid/media/RoutingSessionInfo$Builder;
    .registers 2
    .param p1, "transferReason"    # I

    .line 928
    iput p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferReason:I

    .line 929
    return-object p0
.end method

.method public whitelist setVolume(I)Landroid/media/RoutingSessionInfo$Builder;
    .registers 2
    .param p1, "volume"    # I

    .line 896
    iput p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolume:I

    .line 897
    return-object p0
.end method

.method public whitelist setVolumeHandling(I)Landroid/media/RoutingSessionInfo$Builder;
    .registers 2
    .param p1, "volumeHandling"    # I

    .line 878
    iput p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    .line 879
    return-object p0
.end method

.method public whitelist setVolumeMax(I)Landroid/media/RoutingSessionInfo$Builder;
    .registers 2
    .param p1, "volumeMax"    # I

    .line 887
    iput p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeMax:I

    .line 888
    return-object p0
.end method
