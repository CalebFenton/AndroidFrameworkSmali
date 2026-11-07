.class public final Landroid/health/connect/accesslog/AccessLogsResponseParcel;
.super Ljava/lang/Object;
.source "AccessLogsResponseParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/accesslog/AccessLogsResponseParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccessLogsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/accesslog/AccessLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$JUE5DKa2ItGWq65PhPFkYJHFu5A(Landroid/health/connect/accesslog/AccessLogsResponseParcel;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/accesslog/AccessLogsResponseParcel;->writeToAccessLogParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/health/connect/accesslog/AccessLogsResponseParcel$1;

    invoke-direct {v0}, Landroid/health/connect/accesslog/AccessLogsResponseParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/accesslog/AccessLogsResponseParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/health/connect/internal/ParcelUtils;->getParcelForSharedMemoryIfRequired(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/accesslog/AccessLogsResponseParcel;->mAccessLogsList:Ljava/util/List;

    .line 49
    iget-object v0, p0, Landroid/health/connect/accesslog/AccessLogsResponseParcel;->mAccessLogsList:Ljava/util/List;

    const-class v1, Landroid/health/connect/accesslog/AccessLog;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/health/connect/accesslog/AccessLog;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/accesslog/AccessLogsResponseParcel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/accesslog/AccessLogsResponseParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/accesslog/AccessLog;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "accessLogs":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/accesslog/AccessLog;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Landroid/health/connect/accesslog/AccessLogsResponseParcel;->mAccessLogsList:Ljava/util/List;

    .line 56
    return-void
.end method

.method private blacklist writeToAccessLogParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 69
    iget-object v0, p0, Landroid/health/connect/accesslog/AccessLogsResponseParcel;->mAccessLogsList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccessLogs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/accesslog/AccessLog;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Landroid/health/connect/accesslog/AccessLogsResponseParcel;->mAccessLogsList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    new-instance v0, Landroid/health/connect/accesslog/AccessLogsResponseParcel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/health/connect/accesslog/AccessLogsResponseParcel$$ExternalSyntheticLambda0;-><init>(Landroid/health/connect/accesslog/AccessLogsResponseParcel;)V

    invoke-static {p1, p2, v0}, Landroid/health/connect/internal/ParcelUtils;->putToRequiredMemory(Landroid/os/Parcel;ILandroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;)V

    .line 66
    return-void
.end method
