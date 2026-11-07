.class public final Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;
.super Ljava/lang/Object;
.source "DownloadCompletedOutputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mRetainedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 117
    new-instance v0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;)V
    .registers 3
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;

    .line 42
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;->getRetainedKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;-><init>(Ljava/util/List;)V

    .line 43
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;->mRetainedKeys:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "retainedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 109
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;->mRetainedKeys:Ljava/util/List;

    .line 110
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;->mRetainedKeys:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "retainedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;->mRetainedKeys:Ljava/util/List;

    .line 70
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;->mRetainedKeys:Ljava/util/List;

    .line 71
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;->mRetainedKeys:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRetainedKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;->mRetainedKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 92
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutputParcel;->mRetainedKeys:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 93
    return-void
.end method
