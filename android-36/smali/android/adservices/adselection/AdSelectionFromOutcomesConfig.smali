.class public final Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
.super Ljava/lang/Object;
.source "AdSelectionFromOutcomesConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdSelectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSelectionLogicUri:Landroid/net/Uri;

.field private final blacklist mSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

.field private final blacklist mSeller:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$1;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;Ljava/util/List;Landroid/adservices/common/AdSelectionSignals;Landroid/net/Uri;)V
    .registers 5
    .param p1, "seller"    # Landroid/adservices/common/AdTechIdentifier;
    .param p3, "selectionSignals"    # Landroid/adservices/common/AdSelectionSignals;
    .param p4, "selectionLogicUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/adservices/common/AdSelectionSignals;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 62
    .local p2, "adSelectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 69
    iput-object p2, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mAdSelectionIds:Ljava/util/List;

    .line 70
    iput-object p3, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 71
    iput-object p4, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionLogicUri:Landroid/net/Uri;

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;Ljava/util/List;Landroid/adservices/common/AdSelectionSignals;Landroid/net/Uri;Landroid/adservices/adselection/AdSelectionFromOutcomesConfig-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;-><init>(Landroid/adservices/common/AdTechIdentifier;Ljava/util/List;Landroid/adservices/common/AdSelectionSignals;Landroid/net/Uri;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 78
    nop

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_22

    .line 80
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2e

    .line 81
    :cond_22
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_2e
    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mAdSelectionIds:Ljava/util/List;

    .line 82
    sget-object v0, Landroid/adservices/common/AdSelectionSignals;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdSelectionSignals;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 83
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionLogicUri:Landroid/net/Uri;

    .line 84
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/AdSelectionFromOutcomesConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 137
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 138
    :cond_4
    instance-of v1, p1, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 139
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    .line 140
    .local v1, "that":Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mAdSelectionIds:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mAdSelectionIds:Ljava/util/List;

    .line 141
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 142
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionLogicUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionLogicUri:Landroid/net/Uri;

    .line 143
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    .line 140
    :goto_37
    return v0
.end method

.method public whitelist getAdSelectionIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mAdSelectionIds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSelectionLogicUri()Landroid/net/Uri;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionLogicUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getSelectionSignals()Landroid/adservices/common/AdSelectionSignals;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object v0
.end method

.method public whitelist getSeller()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 148
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mAdSelectionIds:Ljava/util/List;

    iget-object v2, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionLogicUri:Landroid/net/Uri;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 122
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/common/AdTechIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mAdSelectionIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 126
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/common/AdSelectionSignals;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->mSelectionLogicUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    return-void
.end method
