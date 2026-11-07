.class public final Landroid/adservices/adselection/PerBuyerDecisionLogic;
.super Ljava/lang/Object;
.source "PerBuyerDecisionLogic.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/PerBuyerDecisionLogic;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMPTY:Landroid/adservices/adselection/PerBuyerDecisionLogic;


# instance fields
.field private final blacklist mPerBuyerLogicMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/adselection/DecisionLogic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Landroid/adservices/adselection/PerBuyerDecisionLogic;

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/adservices/adselection/PerBuyerDecisionLogic;-><init>(Ljava/util/Map;)V

    sput-object v0, Landroid/adservices/adselection/PerBuyerDecisionLogic;->EMPTY:Landroid/adservices/adselection/PerBuyerDecisionLogic;

    .line 70
    new-instance v0, Landroid/adservices/adselection/PerBuyerDecisionLogic$1;

    invoke-direct {v0}, Landroid/adservices/adselection/PerBuyerDecisionLogic$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/PerBuyerDecisionLogic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/adservices/adselection/AdSelectionConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionConfig$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Landroid/adservices/adselection/DecisionLogic;

    .line 65
    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readMapFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$StringToObjectConverter;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/PerBuyerDecisionLogic;->mPerBuyerLogicMap:Ljava/util/Map;

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/PerBuyerDecisionLogic-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/PerBuyerDecisionLogic;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/adselection/DecisionLogic;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "perBuyerLogicMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/adservices/common/AdTechIdentifier;Landroid/adservices/adselection/DecisionLogic;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Landroid/adservices/adselection/PerBuyerDecisionLogic;->mPerBuyerLogicMap:Ljava/util/Map;

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 103
    :cond_4
    instance-of v0, p1, Landroid/adservices/adselection/PerBuyerDecisionLogic;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 104
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/adservices/adselection/PerBuyerDecisionLogic;

    .line 105
    .local v0, "logicMap":Landroid/adservices/adselection/PerBuyerDecisionLogic;
    iget-object v1, p0, Landroid/adservices/adselection/PerBuyerDecisionLogic;->mPerBuyerLogicMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/adservices/adselection/PerBuyerDecisionLogic;->getPerBuyerLogicMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getPerBuyerLogicMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/adselection/DecisionLogic;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/adservices/adselection/PerBuyerDecisionLogic;->mPerBuyerLogicMap:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/adservices/adselection/PerBuyerDecisionLogic;->mPerBuyerLogicMap:Ljava/util/Map;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 91
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Landroid/adservices/adselection/PerBuyerDecisionLogic;->mPerBuyerLogicMap:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 93
    return-void
.end method
