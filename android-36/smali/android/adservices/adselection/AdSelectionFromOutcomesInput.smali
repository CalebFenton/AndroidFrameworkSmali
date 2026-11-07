.class public final Landroid/adservices/adselection/AdSelectionFromOutcomesInput;
.super Ljava/lang/Object;
.source "AdSelectionFromOutcomesInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/AdSelectionFromOutcomesInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

.field private final blacklist mCallerPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput$1;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionFromOutcomesInput$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Ljava/lang/String;)V
    .registers 3
    .param p1, "adSelectionFromOutcomesConfig"    # Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    .param p2, "callerPackageName"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    .line 57
    iput-object p2, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mCallerPackageName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Ljava/lang/String;Landroid/adservices/adselection/AdSelectionFromOutcomesInput-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;-><init>(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mCallerPackageName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/AdSelectionFromOutcomesInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 81
    :cond_4
    instance-of v1, p1, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 82
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;

    .line 83
    .local v1, "that":Landroid/adservices/adselection/AdSelectionFromOutcomesInput;
    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mCallerPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mCallerPackageName:Ljava/lang/String;

    .line 85
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 83
    :goto_23
    return v0
.end method

.method public blacklist getAdSelectionFromOutcomesConfig()Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    return-object v0
.end method

.method public blacklist getCallerPackageName()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 90
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mCallerPackageName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return-void
.end method
