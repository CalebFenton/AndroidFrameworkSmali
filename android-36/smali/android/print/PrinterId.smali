.class public final Landroid/print/PrinterId;
.super Ljava/lang/Object;
.source "PrinterId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mLocalId:Ljava/lang/String;

.field private final greylist-max-o mServiceName:Landroid/content/ComponentName;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 128
    new-instance v0, Landroid/print/PrinterId$1;

    invoke-direct {v0}, Landroid/print/PrinterId$1;-><init>()V

    sput-object v0, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 3
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .param p2, "localId"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    .line 47
    iput-object p2, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/print/PrinterId-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/print/PrinterId;-><init>(Landroid/os/Parcel;)V

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
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 91
    return v0

    .line 93
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 94
    return v1

    .line 96
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 97
    return v1

    .line 99
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/print/PrinterId;

    .line 100
    .local v2, "other":Landroid/print/PrinterId;
    iget-object v3, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 101
    return v1

    .line 103
    :cond_21
    iget-object v3, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    iget-object v4, v2, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 104
    return v1

    .line 106
    :cond_2c
    return v0
.end method

.method public whitelist getLocalId()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getServiceName()Landroid/content/ComponentName;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 111
    const/16 v0, 0x1f

    .line 112
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 113
    .local v1, "hashCode":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 114
    .end local v1    # "hashCode":I
    .local v2, "hashCode":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 115
    .end local v2    # "hashCode":I
    .restart local v1    # "hashCode":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrinterId{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v1, "serviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", localId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    iget-object v0, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    iget-object v0, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return-void
.end method
