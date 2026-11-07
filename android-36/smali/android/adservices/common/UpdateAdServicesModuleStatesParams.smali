.class public final Landroid/adservices/common/UpdateAdServicesModuleStatesParams;
.super Ljava/lang/Object;
.source "UpdateAdServicesModuleStatesParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/UpdateAdServicesModuleStatesParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/UpdateAdServicesModuleStatesParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdServicesModuleStates:Landroid/util/SparseIntArray;

.field private final blacklist mNotificationType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams$1;

    invoke-direct {v0}, Landroid/adservices/common/UpdateAdServicesModuleStatesParams$1;-><init>()V

    sput-object v0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "moduleStatesSize":I
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mAdServicesModuleStates:Landroid/util/SparseIntArray;

    .line 57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_21

    .line 58
    iget-object v2, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mAdServicesModuleStates:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 60
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mNotificationType:I

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/UpdateAdServicesModuleStatesParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/util/SparseIntArray;I)V
    .registers 4
    .param p1, "adServicesModuleStates"    # Landroid/util/SparseIntArray;
    .param p2, "notificationType"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    iput-object v0, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mAdServicesModuleStates:Landroid/util/SparseIntArray;

    .line 51
    iput p2, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mNotificationType:I

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/util/SparseIntArray;ILandroid/adservices/common/UpdateAdServicesModuleStatesParams-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;-><init>(Landroid/util/SparseIntArray;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 132
    return v0

    .line 135
    :cond_4
    instance-of v1, p1, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    move-object v1, p1

    check-cast v1, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;

    .line 139
    .local v1, "that":Landroid/adservices/common/UpdateAdServicesModuleStatesParams;
    iget-object v3, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mAdServicesModuleStates:Landroid/util/SparseIntArray;

    iget-object v4, v1, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mAdServicesModuleStates:Landroid/util/SparseIntArray;

    if-ne v3, v4, :cond_19

    iget v3, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mNotificationType:I

    iget v4, v1, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mNotificationType:I

    if-ne v3, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    return v0

    .line 136
    .end local v1    # "that":Landroid/adservices/common/UpdateAdServicesModuleStatesParams;
    :cond_1b
    return v2
.end method

.method public whitelist getModuleState(I)I
    .registers 4
    .param p1, "module"    # I

    .line 100
    iget-object v0, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mAdServicesModuleStates:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public blacklist getModuleStates()Landroid/util/SparseIntArray;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mAdServicesModuleStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public whitelist getNotificationType()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mNotificationType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 145
    iget-object v0, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mAdServicesModuleStates:Landroid/util/SparseIntArray;

    iget v1, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mNotificationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateAdIdRequest{mAdServicesModuleStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mAdServicesModuleStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotificationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mNotificationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mAdServicesModuleStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 89
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_24

    .line 91
    iget-object v2, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mAdServicesModuleStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v2, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mAdServicesModuleStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 94
    .end local v1    # "i":I
    :cond_24
    iget v1, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;->mNotificationType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    return-void
.end method
