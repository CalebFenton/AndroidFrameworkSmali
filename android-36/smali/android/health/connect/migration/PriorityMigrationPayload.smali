.class public final Landroid/health/connect/migration/PriorityMigrationPayload;
.super Landroid/health/connect/migration/MigrationPayload;
.source "PriorityMigrationPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/migration/PriorityMigrationPayload$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/migration/PriorityMigrationPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDataCategory:I

.field private final blacklist mDataOrigins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ANwyPfk88p5yfoxZAh2xjsDqC24(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin;
    .registers 1

    invoke-static {p0}, Landroid/health/connect/migration/PriorityMigrationPayload;->dataOriginOf(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Landroid/health/connect/migration/PriorityMigrationPayload$1;

    invoke-direct {v0}, Landroid/health/connect/migration/PriorityMigrationPayload$1;-><init>()V

    sput-object v0, Landroid/health/connect/migration/PriorityMigrationPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/List;)V
    .registers 3
    .param p1, "dataCategory"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p2, "dataOrigins":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/DataOrigin;>;"
    invoke-direct {p0}, Landroid/health/connect/migration/MigrationPayload;-><init>()V

    .line 60
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput p1, p0, Landroid/health/connect/migration/PriorityMigrationPayload;->mDataCategory:I

    .line 63
    iput-object p2, p0, Landroid/health/connect/migration/PriorityMigrationPayload;->mDataOrigins:Ljava/util/List;

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/List;Landroid/health/connect/migration/PriorityMigrationPayload-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/health/connect/migration/PriorityMigrationPayload;-><init>(ILjava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Landroid/health/connect/migration/MigrationPayload;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/migration/PriorityMigrationPayload;->mDataCategory:I

    .line 69
    nop

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/migration/PriorityMigrationPayload$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/migration/PriorityMigrationPayload$$ExternalSyntheticLambda0;-><init>()V

    .line 71
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/migration/PriorityMigrationPayload;->mDataOrigins:Ljava/util/List;

    .line 73
    return-void
.end method

.method private static blacklist dataOriginOf(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 77
    new-instance v0, Landroid/health/connect/datatypes/DataOrigin$Builder;

    invoke-direct {v0}, Landroid/health/connect/datatypes/DataOrigin$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/health/connect/datatypes/DataOrigin$Builder;->setPackageName(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/health/connect/datatypes/DataOrigin$Builder;->build()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDataCategory()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/health/connect/migration/PriorityMigrationPayload;->mDataCategory:I

    return v0
.end method

.method public whitelist getDataOrigins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroid/health/connect/migration/PriorityMigrationPayload;->mDataOrigins:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Landroid/health/connect/migration/PriorityMigrationPayload;->mDataCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v0, p0, Landroid/health/connect/migration/PriorityMigrationPayload;->mDataOrigins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 86
    return-void
.end method
