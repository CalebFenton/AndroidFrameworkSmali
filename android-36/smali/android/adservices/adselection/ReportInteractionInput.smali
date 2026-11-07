.class public final Landroid/adservices/adselection/ReportInteractionInput;
.super Ljava/lang/Object;
.source "ReportInteractionInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/ReportInteractionInput$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/ReportInteractionInput;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UNSET_REPORTING_DESTINATIONS:I = 0x0

.field private static final blacklist UNSET_REPORTING_DESTINATIONS_MESSAGE:Ljava/lang/String; = "Reporting Destinations bitfield not set."


# instance fields
.field private final blacklist mAdId:Ljava/lang/String;

.field private final blacklist mAdSelectionId:J

.field private final blacklist mCallerPackageName:Ljava/lang/String;

.field private final blacklist mCallerSdkName:Ljava/lang/String;

.field private final blacklist mInputEvent:Landroid/view/InputEvent;

.field private final blacklist mInteractionData:Ljava/lang/String;

.field private final blacklist mInteractionKey:Ljava/lang/String;

.field private final blacklist mReportingDestinations:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroid/adservices/adselection/ReportInteractionInput$1;

    invoke-direct {v0}, Landroid/adservices/adselection/ReportInteractionInput$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/ReportInteractionInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/view/InputEvent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "adSelectionId"    # J
    .param p3, "interactionKey"    # Ljava/lang/String;
    .param p4, "interactionData"    # Ljava/lang/String;
    .param p5, "callerPackageName"    # Ljava/lang/String;
    .param p6, "reportingDestinations"    # I
    .param p7, "inputEvent"    # Landroid/view/InputEvent;
    .param p8, "adId"    # Ljava/lang/String;
    .param p9, "callerSdkName"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iput-wide p1, p0, Landroid/adservices/adselection/ReportInteractionInput;->mAdSelectionId:J

    .line 83
    iput-object p3, p0, Landroid/adservices/adselection/ReportInteractionInput;->mInteractionKey:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Landroid/adservices/adselection/ReportInteractionInput;->mInteractionData:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Landroid/adservices/adselection/ReportInteractionInput;->mCallerPackageName:Ljava/lang/String;

    .line 86
    iput p6, p0, Landroid/adservices/adselection/ReportInteractionInput;->mReportingDestinations:I

    .line 87
    iput-object p7, p0, Landroid/adservices/adselection/ReportInteractionInput;->mInputEvent:Landroid/view/InputEvent;

    .line 88
    iput-object p8, p0, Landroid/adservices/adselection/ReportInteractionInput;->mAdId:Ljava/lang/String;

    .line 89
    iput-object p9, p0, Landroid/adservices/adselection/ReportInteractionInput;->mCallerSdkName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/view/InputEvent;Ljava/lang/String;Ljava/lang/String;Landroid/adservices/adselection/ReportInteractionInput-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/adservices/adselection/ReportInteractionInput;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/view/InputEvent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mAdSelectionId:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mInteractionKey:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mInteractionData:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mCallerPackageName:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mReportingDestinations:I

    .line 98
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 100
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda2;-><init>(Landroid/os/Parcelable$Creator;)V

    .line 99
    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    iput-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mInputEvent:Landroid/view/InputEvent;

    .line 101
    new-instance v0, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda3;-><init>(Landroid/os/Parcel;)V

    .line 102
    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mAdId:Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda4;-><init>(Landroid/os/Parcel;)V

    .line 105
    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mCallerSdkName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/ReportInteractionInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/ReportInteractionInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/os/Parcel;Landroid/os/Parcel;)Ljava/lang/String;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "sourceParcel"    # Landroid/os/Parcel;

    .line 103
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/os/Parcel;Landroid/os/Parcel;)Ljava/lang/String;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "sourceParcel"    # Landroid/os/Parcel;

    .line 106
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$writeToParcel$2(ILandroid/os/Parcel;Landroid/view/InputEvent;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceInputEvent"    # Landroid/view/InputEvent;

    .line 126
    invoke-virtual {p2, p1, p0}, Landroid/view/InputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAdId()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mAdId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAdSelectionId()J
    .registers 3

    .line 133
    iget-wide v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mAdSelectionId:J

    return-wide v0
.end method

.method public blacklist getCallerPackageName()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCallerSdkName()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mCallerSdkName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInputEvent()Landroid/view/InputEvent;
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mInputEvent:Landroid/view/InputEvent;

    return-object v0
.end method

.method public blacklist getInteractionData()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mInteractionData:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInteractionKey()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mInteractionKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getReportingDestinations()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mReportingDestinations:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-wide v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mAdSelectionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mInteractionKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mInteractionData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mReportingDestinations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mInputEvent:Landroid/view/InputEvent;

    new-instance v1, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 127
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mAdId:Ljava/lang/String;

    new-instance v1, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 128
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput;->mCallerSdkName:Ljava/lang/String;

    new-instance v1, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 129
    return-void
.end method
