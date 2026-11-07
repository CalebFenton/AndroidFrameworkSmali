.class public final Landroid/security/metrics/KeystoreAtomPayload;
.super Ljava/lang/Object;
.source "KeystoreAtomPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/metrics/KeystoreAtomPayload$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/metrics/KeystoreAtomPayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist crashStats:I = 0x8

.field public static final blacklist keyCreationWithAuthInfo:I = 0x2

.field public static final blacklist keyCreationWithGeneralInfo:I = 0x1

.field public static final blacklist keyCreationWithPurposeAndModesInfo:I = 0x3

.field public static final blacklist keyOperationWithGeneralInfo:I = 0x6

.field public static final blacklist keyOperationWithPurposeAndModesInfo:I = 0x5

.field public static final blacklist keystore2AtomWithOverflow:I = 0x4

.field public static final blacklist rkpErrorStats:I = 0x7

.field public static final blacklist storageStats:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 180
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload$1;

    invoke-direct {v0}, Landroid/security/metrics/KeystoreAtomPayload$1;-><init>()V

    sput-object v0, Landroid/security/metrics/KeystoreAtomPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "_value":Landroid/security/metrics/StorageStats;
    const/4 v1, 0x0

    iput v1, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    .line 29
    iput-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    .line 38
    iput-object p2, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/metrics/KeystoreAtomPayload-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 321
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 324
    return-void

    .line 322
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/security/metrics/KeystoreAtomPayload;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 342
    iput p1, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    .line 343
    iput-object p2, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    .line 344
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 327
    packed-switch p1, :pswitch_data_40

    .line 338
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :pswitch_1d
    const-string v0, "crashStats"

    return-object v0

    .line 335
    :pswitch_20
    const-string/jumbo v0, "rkpErrorStats"

    return-object v0

    .line 334
    :pswitch_24
    const-string/jumbo v0, "keyOperationWithGeneralInfo"

    return-object v0

    .line 333
    :pswitch_28
    const-string/jumbo v0, "keyOperationWithPurposeAndModesInfo"

    return-object v0

    .line 332
    :pswitch_2c
    const-string/jumbo v0, "keystore2AtomWithOverflow"

    return-object v0

    .line 331
    :pswitch_30
    const-string/jumbo v0, "keyCreationWithPurposeAndModesInfo"

    return-object v0

    .line 330
    :pswitch_34
    const-string/jumbo v0, "keyCreationWithAuthInfo"

    return-object v0

    .line 329
    :pswitch_38
    const-string/jumbo v0, "keyCreationWithGeneralInfo"

    return-object v0

    .line 328
    :pswitch_3c
    const-string/jumbo v0, "storageStats"

    return-object v0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist crashStats(Landroid/security/metrics/CrashStats;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/CrashStats;

    .line 168
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 313
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 314
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 315
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 317
    :cond_10
    return v0
.end method

.method public static blacklist keyCreationWithAuthInfo(Landroid/security/metrics/KeyCreationWithAuthInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/KeyCreationWithAuthInfo;

    .line 78
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyCreationWithGeneralInfo(Landroid/security/metrics/KeyCreationWithGeneralInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/KeyCreationWithGeneralInfo;

    .line 63
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyCreationWithPurposeAndModesInfo(Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    .line 93
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyOperationWithGeneralInfo(Landroid/security/metrics/KeyOperationWithGeneralInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/KeyOperationWithGeneralInfo;

    .line 138
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyOperationWithPurposeAndModesInfo(Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    .line 123
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keystore2AtomWithOverflow(Landroid/security/metrics/Keystore2AtomWithOverflow;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/Keystore2AtomWithOverflow;

    .line 108
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist rkpErrorStats(Landroid/security/metrics/RkpErrorStats;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/RkpErrorStats;

    .line 153
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist storageStats(Landroid/security/metrics/StorageStats;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3
    .param p0, "_value"    # Landroid/security/metrics/StorageStats;

    .line 48
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_64

    goto :goto_63

    .line 307
    :pswitch_9
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    .line 304
    :pswitch_13
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 305
    goto :goto_63

    .line 301
    :pswitch_1d
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 302
    goto :goto_63

    .line 298
    :pswitch_27
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 299
    goto :goto_63

    .line 295
    :pswitch_31
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 296
    goto :goto_63

    .line 292
    :pswitch_3b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 293
    goto :goto_63

    .line 289
    :pswitch_45
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 290
    goto :goto_63

    .line 286
    :pswitch_4f
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 287
    goto :goto_63

    .line 283
    :pswitch_59
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 284
    nop

    .line 310
    :goto_63
    return v0

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_59
        :pswitch_4f
        :pswitch_45
        :pswitch_3b
        :pswitch_31
        :pswitch_27
        :pswitch_1d
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getCrashStats()Landroid/security/metrics/CrashStats;
    .registers 2

    .line 172
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 173
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/CrashStats;

    return-object v0
.end method

.method public blacklist getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;
    .registers 2

    .line 82
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 83
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyCreationWithAuthInfo;

    return-object v0
.end method

.method public blacklist getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;
    .registers 2

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 68
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyCreationWithGeneralInfo;

    return-object v0
.end method

.method public blacklist getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    .registers 2

    .line 97
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 98
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    return-object v0
.end method

.method public blacklist getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;
    .registers 2

    .line 142
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 143
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyOperationWithGeneralInfo;

    return-object v0
.end method

.method public blacklist getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;
    .registers 2

    .line 127
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 128
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    return-object v0
.end method

.method public blacklist getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;
    .registers 2

    .line 112
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 113
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/Keystore2AtomWithOverflow;

    return-object v0
.end method

.method public blacklist getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;
    .registers 2

    .line 157
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 158
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/RkpErrorStats;

    return-object v0
.end method

.method public blacklist getStorageStats()Landroid/security/metrics/StorageStats;
    .registers 2

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 53
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/StorageStats;

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 42
    iget v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_8e

    .line 275
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :pswitch_21
    sget-object v1, Landroid/security/metrics/CrashStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/CrashStats;

    .line 272
    .local v1, "_aidl_value":Landroid/security/metrics/CrashStats;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 273
    return-void

    .line 266
    .end local v1    # "_aidl_value":Landroid/security/metrics/CrashStats;
    :pswitch_2d
    sget-object v1, Landroid/security/metrics/RkpErrorStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/RkpErrorStats;

    .line 267
    .local v1, "_aidl_value":Landroid/security/metrics/RkpErrorStats;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 268
    return-void

    .line 261
    .end local v1    # "_aidl_value":Landroid/security/metrics/RkpErrorStats;
    :pswitch_39
    sget-object v1, Landroid/security/metrics/KeyOperationWithGeneralInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyOperationWithGeneralInfo;

    .line 262
    .local v1, "_aidl_value":Landroid/security/metrics/KeyOperationWithGeneralInfo;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 263
    return-void

    .line 256
    .end local v1    # "_aidl_value":Landroid/security/metrics/KeyOperationWithGeneralInfo;
    :pswitch_45
    sget-object v1, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    .line 257
    .local v1, "_aidl_value":Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 258
    return-void

    .line 251
    .end local v1    # "_aidl_value":Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;
    :pswitch_51
    sget-object v1, Landroid/security/metrics/Keystore2AtomWithOverflow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/Keystore2AtomWithOverflow;

    .line 252
    .local v1, "_aidl_value":Landroid/security/metrics/Keystore2AtomWithOverflow;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 253
    return-void

    .line 246
    .end local v1    # "_aidl_value":Landroid/security/metrics/Keystore2AtomWithOverflow;
    :pswitch_5d
    sget-object v1, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    .line 247
    .local v1, "_aidl_value":Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 248
    return-void

    .line 241
    .end local v1    # "_aidl_value":Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    :pswitch_69
    sget-object v1, Landroid/security/metrics/KeyCreationWithAuthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyCreationWithAuthInfo;

    .line 242
    .local v1, "_aidl_value":Landroid/security/metrics/KeyCreationWithAuthInfo;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 243
    return-void

    .line 236
    .end local v1    # "_aidl_value":Landroid/security/metrics/KeyCreationWithAuthInfo;
    :pswitch_75
    sget-object v1, Landroid/security/metrics/KeyCreationWithGeneralInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyCreationWithGeneralInfo;

    .line 237
    .local v1, "_aidl_value":Landroid/security/metrics/KeyCreationWithGeneralInfo;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 238
    return-void

    .line 231
    .end local v1    # "_aidl_value":Landroid/security/metrics/KeyCreationWithGeneralInfo;
    :pswitch_81
    sget-object v1, Landroid/security/metrics/StorageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/StorageStats;

    .line 232
    .local v1, "_aidl_value":Landroid/security/metrics/StorageStats;
    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 233
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_81
        :pswitch_75
        :pswitch_69
        :pswitch_5d
        :pswitch_51
        :pswitch_45
        :pswitch_39
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setCrashStats(Landroid/security/metrics/CrashStats;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/CrashStats;

    .line 177
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 178
    return-void
.end method

.method public blacklist setKeyCreationWithAuthInfo(Landroid/security/metrics/KeyCreationWithAuthInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/KeyCreationWithAuthInfo;

    .line 87
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method public blacklist setKeyCreationWithGeneralInfo(Landroid/security/metrics/KeyCreationWithGeneralInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/KeyCreationWithGeneralInfo;

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public blacklist setKeyCreationWithPurposeAndModesInfo(Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    .line 102
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method public blacklist setKeyOperationWithGeneralInfo(Landroid/security/metrics/KeyOperationWithGeneralInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/KeyOperationWithGeneralInfo;

    .line 147
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 148
    return-void
.end method

.method public blacklist setKeyOperationWithPurposeAndModesInfo(Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    .line 132
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 133
    return-void
.end method

.method public blacklist setKeystore2AtomWithOverflow(Landroid/security/metrics/Keystore2AtomWithOverflow;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/Keystore2AtomWithOverflow;

    .line 117
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 118
    return-void
.end method

.method public blacklist setRkpErrorStats(Landroid/security/metrics/RkpErrorStats;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/RkpErrorStats;

    .line 162
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 163
    return-void
.end method

.method public blacklist setStorageStats(Landroid/security/metrics/StorageStats;)V
    .registers 3
    .param p1, "_value"    # Landroid/security/metrics/StorageStats;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 193
    iget v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    packed-switch v0, :pswitch_data_54

    goto :goto_53

    .line 220
    :pswitch_b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_53

    .line 217
    :pswitch_13
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 218
    goto :goto_53

    .line 214
    :pswitch_1b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 215
    goto :goto_53

    .line 211
    :pswitch_23
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 212
    goto :goto_53

    .line 208
    :pswitch_2b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 209
    goto :goto_53

    .line 205
    :pswitch_33
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    goto :goto_53

    .line 202
    :pswitch_3b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 203
    goto :goto_53

    .line 199
    :pswitch_43
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 200
    goto :goto_53

    .line 196
    :pswitch_4b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 197
    nop

    .line 223
    :goto_53
    return-void

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
