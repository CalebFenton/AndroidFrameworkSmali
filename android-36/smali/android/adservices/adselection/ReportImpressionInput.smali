.class public final Landroid/adservices/adselection/ReportImpressionInput;
.super Ljava/lang/Object;
.source "ReportImpressionInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/ReportImpressionInput$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/ReportImpressionInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

.field private final blacklist mAdSelectionId:J

.field private final blacklist mCallerPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/adservices/adselection/ReportImpressionInput$1;

    invoke-direct {v0}, Landroid/adservices/adselection/ReportImpressionInput$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/ReportImpressionInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JLandroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;)V
    .registers 5
    .param p1, "adSelectionId"    # J
    .param p3, "adSelectionConfig"    # Landroid/adservices/adselection/AdSelectionConfig;
    .param p4, "callerPackageName"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iput-wide p1, p0, Landroid/adservices/adselection/ReportImpressionInput;->mAdSelectionId:J

    .line 60
    iput-object p3, p0, Landroid/adservices/adselection/ReportImpressionInput;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    .line 61
    iput-object p4, p0, Landroid/adservices/adselection/ReportImpressionInput;->mCallerPackageName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;Landroid/adservices/adselection/ReportImpressionInput-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/adselection/ReportImpressionInput;-><init>(JLandroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/adselection/ReportImpressionInput;->mAdSelectionId:J

    .line 68
    sget-object v0, Landroid/adservices/adselection/AdSelectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/adselection/AdSelectionConfig;

    iput-object v0, p0, Landroid/adservices/adselection/ReportImpressionInput;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/ReportImpressionInput;->mCallerPackageName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/ReportImpressionInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/ReportImpressionInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdSelectionConfig()Landroid/adservices/adselection/AdSelectionConfig;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/adservices/adselection/ReportImpressionInput;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    return-object v0
.end method

.method public blacklist getAdSelectionId()J
    .registers 3

    .line 91
    iget-wide v0, p0, Landroid/adservices/adselection/ReportImpressionInput;->mAdSelectionId:J

    return-wide v0
.end method

.method public blacklist getCallerPackageName()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/adservices/adselection/ReportImpressionInput;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-wide v0, p0, Landroid/adservices/adselection/ReportImpressionInput;->mAdSelectionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-object v0, p0, Landroid/adservices/adselection/ReportImpressionInput;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/adselection/AdSelectionConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    iget-object v0, p0, Landroid/adservices/adselection/ReportImpressionInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method
