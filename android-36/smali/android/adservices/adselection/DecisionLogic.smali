.class public final Landroid/adservices/adselection/DecisionLogic;
.super Ljava/lang/Object;
.source "DecisionLogic.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/DecisionLogic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDecisionLogic:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroid/adservices/adselection/DecisionLogic$1;

    invoke-direct {v0}, Landroid/adservices/adselection/DecisionLogic$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/DecisionLogic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/adservices/adselection/DecisionLogic;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/DecisionLogic-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/DecisionLogic;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "buyerDecisionLogic"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Landroid/adservices/adselection/DecisionLogic;->mDecisionLogic:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 81
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 82
    :cond_4
    instance-of v0, p1, Landroid/adservices/adselection/DecisionLogic;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 83
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/adservices/adselection/DecisionLogic;

    .line 84
    .local v0, "decisionLogic":Landroid/adservices/adselection/DecisionLogic;
    iget-object v1, p0, Landroid/adservices/adselection/DecisionLogic;->mDecisionLogic:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/adservices/adselection/DecisionLogic;->getLogic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getLogic()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/adservices/adselection/DecisionLogic;->mDecisionLogic:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/adservices/adselection/DecisionLogic;->mDecisionLogic:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/adservices/adselection/DecisionLogic;->mDecisionLogic:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Landroid/adservices/adselection/DecisionLogic;->mDecisionLogic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
