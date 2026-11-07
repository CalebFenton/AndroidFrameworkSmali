.class public Landroid/security/metrics/KeystoreAtom;
.super Ljava/lang/Object;
.source "KeystoreAtom.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/metrics/KeystoreAtom;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist count:I

.field public blacklist payload:Landroid/security/metrics/KeystoreAtomPayload;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/security/metrics/KeystoreAtom$1;

    invoke-direct {v0}, Landroid/security/metrics/KeystoreAtom$1;-><init>()V

    sput-object v0, Landroid/security/metrics/KeystoreAtom;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Landroid/security/metrics/KeystoreAtom;->count:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 69
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 72
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtom;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 65
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

    if-lt v1, v2, :cond_5e

    .line 50
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_5c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 55
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 58
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 56
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_26
    :try_start_26
    sget-object v2, Landroid/security/metrics/KeystoreAtomPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/metrics/KeystoreAtomPayload;

    iput-object v2, p0, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_5c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 55
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 58
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 56
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeystoreAtom;->count:I
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_5c

    .line 55
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_56

    .line 58
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    nop

    .line 60
    return-void

    .line 56
    :cond_56
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :catchall_5c
    move-exception v2

    goto :goto_66

    .line 49
    :cond_5e
    :try_start_5e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/security/metrics/KeystoreAtom;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_5c

    .line 55
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/security/metrics/KeystoreAtom;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_66
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6f

    .line 56
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_6f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 36
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v1, p0, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 38
    iget v1, p0, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

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
