.class public final Landroid/content/AttributionSource$Builder;
.super Ljava/lang/Object;
.source "AttributionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AttributionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAttributionSourceState:Landroid/content/AttributionSourceState;

.field private blacklist mHasBeenUsed:Z


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    .line 652
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p1, v0, Landroid/content/AttributionSourceState;->uid:I

    .line 653
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, -0x1

    iput v1, v0, Landroid/content/AttributionSourceState;->pid:I

    .line 654
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    iput v1, v0, Landroid/content/AttributionSourceState;->deviceId:I

    .line 655
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-static {}, Landroid/content/AttributionSource;->-$$Nest$sfgetsDefaultToken()Landroid/os/Binder;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 656
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "current"    # Landroid/content/AttributionSource;

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    .line 665
    if-eqz p1, :cond_51

    .line 668
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    iput v1, v0, Landroid/content/AttributionSourceState;->uid:I

    .line 669
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPid()I

    move-result v1

    iput v1, v0, Landroid/content/AttributionSourceState;->pid:I

    .line 670
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 671
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 672
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v1, v1, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 674
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v1

    iput v1, v0, Landroid/content/AttributionSourceState;->deviceId:I

    .line 675
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 676
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 677
    return-void

    .line 666
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "current AttributionSource can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkNotUsed()V
    .registers 3

    .line 794
    iget-boolean v0, p0, Landroid/content/AttributionSource$Builder;->mHasBeenUsed:Z

    if-nez v0, :cond_5

    .line 798
    return-void

    .line 795
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/content/AttributionSource;
    .registers 3

    .line 783
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/AttributionSource$Builder;->mHasBeenUsed:Z

    .line 786
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-nez v0, :cond_13

    .line 788
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 790
    :cond_13
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-direct {v0, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    return-object v0
.end method

.method public whitelist setAttributionTag(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 705
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 706
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 707
    return-object p0
.end method

.method public whitelist setDeviceId(I)Landroid/content/AttributionSource$Builder;
    .registers 3
    .param p1, "deviceId"    # I

    .line 752
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 753
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p1, v0, Landroid/content/AttributionSourceState;->deviceId:I

    .line 754
    return-object p0
.end method

.method public whitelist setNext(Landroid/content/AttributionSource;)Landroid/content/AttributionSource$Builder;
    .registers 6
    .param p1, "value"    # Landroid/content/AttributionSource;

    .line 761
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 762
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    if-eqz p1, :cond_12

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_16

    .line 763
    :cond_12
    iget-object v1, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :goto_16
    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 764
    return-object p0
.end method

.method public blacklist setNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource$Builder;
    .registers 6
    .param p1, "value"    # Landroid/content/AttributionSource;

    .line 772
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 773
    if-eqz p1, :cond_14

    .line 776
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 778
    return-object p0

    .line 774
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null AttributionSource not permitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 696
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 697
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 698
    return-object p0
.end method

.method public whitelist setPid(I)Landroid/content/AttributionSource$Builder;
    .registers 3
    .param p1, "value"    # I

    .line 687
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 688
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p1, v0, Landroid/content/AttributionSourceState;->pid:I

    .line 689
    return-object p0
.end method

.method public whitelist setRenouncedPermissions(Ljava/util/Set;)Landroid/content/AttributionSource$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/AttributionSource$Builder;"
        }
    .end annotation

    .line 738
    .local p1, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    .line 739
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    if-eqz p1, :cond_11

    .line 740
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    iput-object v1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 741
    return-object p0
.end method
