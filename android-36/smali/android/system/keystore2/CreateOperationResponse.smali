.class public Landroid/system/keystore2/CreateOperationResponse;
.super Ljava/lang/Object;
.source "CreateOperationResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/keystore2/CreateOperationResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist iOperation:Landroid/system/keystore2/IKeystoreOperation;

.field public blacklist operationChallenge:Landroid/system/keystore2/OperationChallenge;

.field public blacklist parameters:Landroid/system/keystore2/KeyParameters;

.field public blacklist upgradedBlob:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Landroid/system/keystore2/CreateOperationResponse$1;

    invoke-direct {v0}, Landroid/system/keystore2/CreateOperationResponse$1;-><init>()V

    sput-object v0, Landroid/system/keystore2/CreateOperationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 74
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 75
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 77
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/system/keystore2/CreateOperationResponse;->operationChallenge:Landroid/system/keystore2/OperationChallenge;

    invoke-direct {p0, v1}, Landroid/system/keystore2/CreateOperationResponse;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 69
    iget-object v1, p0, Landroid/system/keystore2/CreateOperationResponse;->parameters:Landroid/system/keystore2/KeyParameters;

    invoke-direct {p0, v1}, Landroid/system/keystore2/CreateOperationResponse;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 70
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 47
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 49
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_9e

    .line 50
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_9c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 60
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/system/keystore2/IKeystoreOperation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreOperation;

    move-result-object v2

    iput-object v2, p0, Landroid/system/keystore2/CreateOperationResponse;->iOperation:Landroid/system/keystore2/IKeystoreOperation;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_9c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 60
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_46
    :try_start_46
    sget-object v2, Landroid/system/keystore2/OperationChallenge;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/OperationChallenge;

    iput-object v2, p0, Landroid/system/keystore2/CreateOperationResponse;->operationChallenge:Landroid/system/keystore2/OperationChallenge;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_9c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_66

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_60

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 60
    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_66
    :try_start_66
    sget-object v2, Landroid/system/keystore2/KeyParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyParameters;

    iput-object v2, p0, Landroid/system/keystore2/CreateOperationResponse;->parameters:Landroid/system/keystore2/KeyParameters;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_9c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_86

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_80

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 60
    :cond_80
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_86
    :try_start_86
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/system/keystore2/CreateOperationResponse;->upgradedBlob:[B
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_9c

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_96

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    nop

    .line 64
    return-void

    .line 60
    :cond_96
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :catchall_9c
    move-exception v2

    goto :goto_a6

    .line 49
    :cond_9e
    :try_start_9e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/system/keystore2/CreateOperationResponse;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_9c

    .line 59
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/system/keystore2/CreateOperationResponse;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_a6
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_af

    .line 60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_af
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 34
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v1, p0, Landroid/system/keystore2/CreateOperationResponse;->iOperation:Landroid/system/keystore2/IKeystoreOperation;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 36
    iget-object v1, p0, Landroid/system/keystore2/CreateOperationResponse;->operationChallenge:Landroid/system/keystore2/OperationChallenge;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    iget-object v1, p0, Landroid/system/keystore2/CreateOperationResponse;->parameters:Landroid/system/keystore2/KeyParameters;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 38
    iget-object v1, p0, Landroid/system/keystore2/CreateOperationResponse;->upgradedBlob:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 40
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    return-void
.end method
