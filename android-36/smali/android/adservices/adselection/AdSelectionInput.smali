.class public final Landroid/adservices/adselection/AdSelectionInput;
.super Ljava/lang/Object;
.source "AdSelectionInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/AdSelectionInput$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/AdSelectionInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

.field private final blacklist mCallerPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/adservices/adselection/AdSelectionInput$1;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionInput$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/AdSelectionInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;)V
    .registers 3
    .param p1, "adSelectionConfig"    # Landroid/adservices/adselection/AdSelectionConfig;
    .param p2, "callerPackageName"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionInput;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    .line 52
    iput-object p2, p0, Landroid/adservices/adselection/AdSelectionInput;->mCallerPackageName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;Landroid/adservices/adselection/AdSelectionInput-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/adservices/adselection/AdSelectionInput;-><init>(Landroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Landroid/adservices/adselection/AdSelectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/adselection/AdSelectionConfig;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionInput;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionInput;->mCallerPackageName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/AdSelectionInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/AdSelectionInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdSelectionConfig()Landroid/adservices/adselection/AdSelectionConfig;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionInput;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    return-object v0
.end method

.method public blacklist getCallerPackageName()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionInput;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionInput;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/adselection/AdSelectionConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method
