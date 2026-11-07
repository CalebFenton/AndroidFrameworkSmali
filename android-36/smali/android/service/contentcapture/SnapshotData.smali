.class public final Landroid/service/contentcapture/SnapshotData;
.super Ljava/lang/Object;
.source "SnapshotData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/contentcapture/SnapshotData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAssistContent:Landroid/app/assist/AssistContent;

.field private final blacklist mAssistData:Landroid/os/Bundle;

.field private final blacklist mAssistStructure:Landroid/app/assist/AssistStructure;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 94
    new-instance v0, Landroid/service/contentcapture/SnapshotData$1;

    invoke-direct {v0}, Landroid/service/contentcapture/SnapshotData$1;-><init>()V

    sput-object v0, Landroid/service/contentcapture/SnapshotData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
    .registers 4
    .param p1, "assistData"    # Landroid/os/Bundle;
    .param p2, "assistStructure"    # Landroid/app/assist/AssistStructure;
    .param p3, "assistContent"    # Landroid/app/assist/AssistContent;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/service/contentcapture/SnapshotData;->mAssistData:Landroid/os/Bundle;

    .line 48
    iput-object p2, p0, Landroid/service/contentcapture/SnapshotData;->mAssistStructure:Landroid/app/assist/AssistStructure;

    .line 49
    iput-object p3, p0, Landroid/service/contentcapture/SnapshotData;->mAssistContent:Landroid/app/assist/AssistContent;

    .line 50
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistData:Landroid/os/Bundle;

    .line 54
    const-class v0, Landroid/app/assist/AssistStructure;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure;

    iput-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistStructure:Landroid/app/assist/AssistStructure;

    .line 55
    const-class v0, Landroid/app/assist/AssistContent;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistContent;

    iput-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistContent:Landroid/app/assist/AssistContent;

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAssistContent()Landroid/app/assist/AssistContent;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistContent:Landroid/app/assist/AssistContent;

    return-object v0
.end method

.method public whitelist getAssistData()Landroid/os/Bundle;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getAssistStructure()Landroid/app/assist/AssistStructure;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistStructure:Landroid/app/assist/AssistStructure;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    iget-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistContent:Landroid/app/assist/AssistContent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    return-void
.end method
