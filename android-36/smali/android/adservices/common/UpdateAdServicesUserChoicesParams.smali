.class public final Landroid/adservices/common/UpdateAdServicesUserChoicesParams;
.super Ljava/lang/Object;
.source "UpdateAdServicesUserChoicesParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/UpdateAdServicesUserChoicesParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/UpdateAdServicesUserChoicesParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdServicesUserChoiceList:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams$1;

    invoke-direct {v0}, Landroid/adservices/common/UpdateAdServicesUserChoicesParams$1;-><init>()V

    sput-object v0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "length":I
    new-array v1, v0, [I

    .line 53
    .local v1, "intKeys":[I
    new-array v2, v0, [I

    .line 54
    .local v2, "intValues":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 55
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 56
    new-instance v3, Landroid/util/SparseIntArray;

    array-length v4, v1

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v3, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    .line 57
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    array-length v4, v1

    if-ge v3, v4, :cond_29

    .line 58
    iget-object v4, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    aget v5, v1, v3

    aget v6, v2, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 60
    .end local v3    # "i":I
    :cond_29
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/UpdateAdServicesUserChoicesParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/util/SparseIntArray;)V
    .registers 2
    .param p1, "adServicesUserChoiceList"    # Landroid/util/SparseIntArray;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/util/SparseIntArray;Landroid/adservices/common/UpdateAdServicesUserChoicesParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;-><init>(Landroid/util/SparseIntArray;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 131
    if-ne p0, p1, :cond_4

    .line 132
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_4
    instance-of v0, p1, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;

    .line 139
    .local v0, "that":Landroid/adservices/common/UpdateAdServicesUserChoicesParams;
    iget-object v1, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    iget-object v2, v0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 136
    .end local v0    # "that":Landroid/adservices/common/UpdateAdServicesUserChoicesParams;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUserChoice(I)I
    .registers 4
    .param p1, "module"    # I

    .line 101
    iget-object v0, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public blacklist getUserChoiceMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 113
    .local v0, "length":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 114
    .local v1, "userChoicemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_28

    .line 115
    iget-object v3, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    .line 116
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 115
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 118
    .end local v2    # "i":I
    :cond_28
    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateAdIdRequest{mAdServicesUserChoiceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    iget-object v0, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 86
    .local v0, "length":I
    new-array v1, v0, [I

    .line 87
    .local v1, "keys":[I
    new-array v2, v0, [I

    .line 88
    .local v2, "values":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_20

    .line 89
    iget-object v4, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 90
    iget-object v4, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 93
    .end local v3    # "i":I
    :cond_20
    array-length v3, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 95
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 96
    return-void
.end method
