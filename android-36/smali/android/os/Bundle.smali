.class public final Landroid/os/Bundle;
.super Landroid/os/BaseBundle;
.source "Bundle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Bundle$HasBinderStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMPTY:Landroid/os/Bundle;

.field static final greylist-max-o FLAG_ALLOW_FDS:I = 0x400

.field static final blacklist FLAG_HAS_BINDERS:I = 0x1000

.field static final blacklist FLAG_HAS_BINDERS_KNOWN:I = 0x800

.field static final greylist-max-o FLAG_HAS_FDS:I = 0x100

.field static final greylist-max-o FLAG_HAS_FDS_KNOWN:I = 0x200

.field static final blacklist FLAG_HAS_INTENT:I = 0x4000

.field static final blacklist FLAG_VERIFY_TOKENS_PRESENT:I = 0x2000

.field public static final blacklist STATUS_BINDERS_NOT_PRESENT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist STATUS_BINDERS_PRESENT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist STATUS_BINDERS_UNKNOWN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o STRIPPED:Landroid/os/Bundle;

.field public static blacklist intentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist isFirstRetrievedFromABundle:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 138
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v1, v0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    .line 141
    sget-object v0, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    const-string v1, "STRIPPED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1523
    new-instance v0, Landroid/os/Bundle$1;

    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 150
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    .line 151
    const/16 v0, 0xe00

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 152
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 228
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    .line 229
    const/16 v0, 0xe00

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 230
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "b"    # Landroid/os/Bundle;

    .line 242
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    .line 243
    iget v0, p1, Landroid/os/Bundle;->mFlags:I

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 244
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;Z)V
    .registers 4
    .param p1, "from"    # Landroid/os/Bundle;
    .param p2, "deep"    # Z

    .line 190
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;Z)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    .line 191
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .line 164
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    .line 165
    const/16 v0, 0x400

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 166
    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    .line 167
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .line 177
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    .line 178
    const/16 v0, 0x400

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 179
    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    .line 180
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 254
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    .line 255
    const/16 v0, 0xe00

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 256
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 217
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    .line 218
    const/16 v0, 0xe00

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 219
    return-void
.end method

.method public static greylist-max-r forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 265
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 266
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-object v0
.end method

.method private greylist-max-o maybePrefillHasFds()V
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_19

    .line 201
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 202
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x300

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_19

    .line 204
    :cond_13
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 207
    :cond_19
    :goto_19
    return-void
.end method

.method public static greylist setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defusable"    # Z

    .line 327
    if-eqz p0, :cond_5

    .line 328
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 330
    :cond_5
    return-object p0
.end method


# virtual methods
.method public whitelist clear()V
    .registers 2

    .line 358
    invoke-super {p0}, Landroid/os/BaseBundle;->clear()V

    .line 359
    const/16 v0, 0x600

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 360
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 339
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist deepCopy()Landroid/os/Bundle;
    .registers 3

    .line 350
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 3

    .line 1541
    const/4 v0, 0x0

    .line 1542
    .local v0, "mask":I
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1543
    or-int/lit8 v0, v0, 0x1

    .line 1545
    :cond_9
    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1607
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1609
    .local v0, "token":J
    iget-object v2, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v2, :cond_22

    .line 1610
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v2

    const-wide v3, 0x10500000001L

    if-eqz v2, :cond_18

    .line 1611
    const/4 v2, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_30

    .line 1613
    :cond_18
    iget-object v2, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_30

    .line 1616
    :cond_22
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1619
    :goto_30
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1620
    return-void
.end method

.method public blacklist enableTokenVerification()V
    .registers 2

    .line 302
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 303
    return-void
.end method

.method public whitelist getBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1482
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1483
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1484
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1485
    return-object v1

    .line 1488
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 1489
    :catch_11
    move-exception v2

    .line 1490
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "IBinder"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1491
    return-object v1
.end method

.method public whitelist getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1032
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1033
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1034
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1035
    return-object v1

    .line 1038
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    .line 1039
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, p0}, Landroid/os/Bundle;->setClassLoaderSameAsContainerBundleWhenRetrievedFirstTime(Landroid/os/BaseBundle;)V
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_13} :catch_14

    .line 1040
    return-object v2

    .line 1041
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catch_14
    move-exception v2

    .line 1042
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Bundle"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1043
    return-object v1
.end method

.method public whitelist getByte(Ljava/lang/String;)B
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 861
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public whitelist getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .line 874
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getByteArray(Ljava/lang/String;)[B
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1413
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChar(Ljava/lang/String;)C
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 886
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;)C

    move-result v0

    return v0
.end method

.method public whitelist getChar(Ljava/lang/String;C)C
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .line 899
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public whitelist getCharArray(Ljava/lang/String;)[C
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1441
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 963
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .line 979
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1469
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1399
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 286
    invoke-super {p0}, Landroid/os/BaseBundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFloat(Ljava/lang/String;)F
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 936
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist getFloat(Ljava/lang/String;F)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 949
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public whitelist getFloatArray(Ljava/lang/String;)[F
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1455
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    return-object v0
.end method

.method public greylist getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1510
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1511
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1512
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1513
    return-object v1

    .line 1516
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 1517
    :catch_11
    move-exception v2

    .line 1518
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "IBinder"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1519
    return-object v1
.end method

.method public whitelist getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1371
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1080
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1081
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1082
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1083
    return-object v1

    .line 1086
    :cond_b
    :try_start_b
    move-object v2, v0

    check-cast v2, Landroid/os/Parcelable;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_e} :catch_f

    return-object v2

    .line 1087
    :catch_f
    move-exception v2

    .line 1088
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Parcelable"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1089
    return-object v1
.end method

.method public whitelist getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1121
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1142
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1143
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1144
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1145
    return-object v1

    .line 1148
    :cond_b
    :try_start_b
    move-object v2, v0

    check-cast v2, [Landroid/os/Parcelable;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_e} :catch_f

    return-object v2

    .line 1149
    :catch_f
    move-exception v2

    .line 1150
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Parcelable[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1151
    return-object v1
.end method

.method public whitelist getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1185
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1188
    :try_start_3
    const-class v0, [Landroid/os/Parcelable;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_17} :catch_18
    .catch Landroid/os/BadTypeParcelableException; {:try_start_3 .. :try_end_17} :catch_18

    return-object v0

    .line 1189
    :catch_18
    move-exception v0

    .line 1190
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1191
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1213
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1214
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1215
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1216
    return-object v1

    .line 1219
    :cond_b
    :try_start_b
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_e} :catch_f

    return-object v2

    .line 1220
    :catch_f
    move-exception v2

    .line 1221
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "ArrayList"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1222
    return-object v1
.end method

.method public whitelist getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1258
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1339
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1357
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-super {p0, p1, v0}, Landroid/os/BaseBundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getShort(Ljava/lang/String;)S
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 911
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public whitelist getShort(Ljava/lang/String;S)S
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .line 924
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public whitelist getShortArray(Ljava/lang/String;)[S
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1427
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getSize()I
    .registers 2

    .line 421
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_b

    .line 422
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    return v0

    .line 424
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSize(Ljava/lang/String;)Landroid/util/Size;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 992
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 993
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 995
    .local v0, "o":Ljava/lang/Object;
    :try_start_9
    move-object v1, v0

    check-cast v1, Landroid/util/Size;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_c} :catch_d

    return-object v1

    .line 996
    :catch_d
    move-exception v1

    .line 997
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "Size"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 998
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getSizeF(Ljava/lang/String;)Landroid/util/SizeF;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1012
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1013
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1015
    .local v0, "o":Ljava/lang/Object;
    :try_start_9
    move-object v1, v0

    check-cast v1, Landroid/util/SizeF;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_c} :catch_d

    return-object v1

    .line 1016
    :catch_d
    move-exception v1

    .line 1017
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "SizeF"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1018
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1275
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1276
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1277
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1278
    return-object v1

    .line 1281
    :cond_b
    :try_start_b
    move-object v2, v0

    check-cast v2, Landroid/util/SparseArray;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_e} :catch_f

    return-object v2

    .line 1282
    :catch_f
    move-exception v2

    .line 1283
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "SparseArray"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1284
    return-object v1
.end method

.method public whitelist getSparseParcelableArray(Ljava/lang/String;Ljava/lang/Class;)Landroid/util/SparseArray;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 1315
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1317
    :try_start_3
    const-class v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_17} :catch_18
    .catch Landroid/os/BadTypeParcelableException; {:try_start_3 .. :try_end_17} :catch_18

    return-object v0

    .line 1318
    :catch_18
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SparseArray<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1320
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1385
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasBinders()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 449
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 450
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_f

    .line 451
    return v1

    .line 453
    :cond_f
    return v2

    .line 457
    :cond_10
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 458
    .local v0, "p":Landroid/os/Parcel;
    if-nez v0, :cond_16

    .line 459
    const/4 v1, 0x2

    return v1

    .line 461
    :cond_16
    invoke-virtual {v0}, Landroid/os/Parcel;->hasBinders()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 462
    iget v2, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v2, v2, 0x1000

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Landroid/os/Bundle;->mFlags:I

    .line 463
    return v1

    .line 465
    :cond_25
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    .line 466
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    .line 467
    return v2
.end method

.method public whitelist hasFileDescriptors()Z
    .registers 3

    .line 432
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_25

    .line 433
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 434
    .local v0, "p":Landroid/os/Parcel;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_e

    :cond_c
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    :goto_e
    invoke-static {v1}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 435
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v1, v1, 0x100

    goto :goto_1d

    .line 436
    :cond_19
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, -0x101

    :goto_1d
    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    .line 437
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    .line 439
    .end local v0    # "p":Landroid/os/Parcel;
    :cond_25
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0
.end method

.method public blacklist hasIntent()Z
    .registers 2

    .line 478
    invoke-super {p0}, Landroid/os/BaseBundle;->hasIntent()Z

    move-result v0

    return v0
.end method

.method public whitelist putAll(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 383
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 384
    invoke-virtual {p1}, Landroid/os/Bundle;->unparcel()V

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mOwnsLazyValues:Z

    .line 386
    iput-boolean v0, p1, Landroid/os/Bundle;->mOwnsLazyValues:Z

    .line 387
    iget-object v1, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 388
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    const/4 v3, 0x1

    if-ge v2, v1, :cond_34

    .line 389
    iget-object v4, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 390
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 391
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_2c

    .line 392
    move-object v6, v5

    check-cast v6, Landroid/os/Bundle;

    iput-boolean v3, v6, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    .line 394
    :cond_2c
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 398
    .end local v2    # "i":I
    :cond_34
    iget v2, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_40

    .line 399
    iget v2, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroid/os/Bundle;->mFlags:I

    .line 401
    :cond_40
    iget v2, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_4c

    .line 402
    iget v2, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Landroid/os/Bundle;->mFlags:I

    .line 405
    :cond_4c
    iget v2, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_58

    .line 406
    iget v2, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Landroid/os/Bundle;->mFlags:I

    .line 408
    :cond_58
    iget v2, p1, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_64

    .line 409
    iget v2, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p0, Landroid/os/Bundle;->mFlags:I

    .line 411
    :cond_64
    invoke-virtual {p0}, Landroid/os/Bundle;->hasIntent()Z

    move-result v2

    if-nez v2, :cond_70

    invoke-virtual {p1}, Landroid/os/Bundle;->hasIntent()Z

    move-result v2

    if-eqz v2, :cond_71

    :cond_70
    move v0, v3

    :cond_71
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setHasIntent(Z)V

    .line 412
    return-void
.end method

.method public whitelist putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;

    .line 829
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 830
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 832
    return-void
.end method

.method public whitelist putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .line 807
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 808
    if-eqz p2, :cond_8

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    .line 811
    :cond_8
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    return-void
.end method

.method public whitelist putByte(Ljava/lang/String;B)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 540
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByte(Ljava/lang/String;B)V

    .line 541
    return-void
.end method

.method public whitelist putByteArray(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 748
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByteArray(Ljava/lang/String;[B)V

    .line 749
    return-void
.end method

.method public whitelist putChar(Ljava/lang/String;C)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 552
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putChar(Ljava/lang/String;C)V

    .line 553
    return-void
.end method

.method public whitelist putCharArray(Ljava/lang/String;[C)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .line 772
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharArray(Ljava/lang/String;[C)V

    .line 773
    return-void
.end method

.method public whitelist putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 588
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 589
    return-void
.end method

.method public whitelist putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .line 796
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 797
    return-void
.end method

.method public whitelist putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 724
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 725
    return-void
.end method

.method public whitelist putFloat(Ljava/lang/String;F)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 576
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloat(Ljava/lang/String;F)V

    .line 577
    return-void
.end method

.method public whitelist putFloatArray(Ljava/lang/String;[F)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 784
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 785
    return-void
.end method

.method public greylist putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 847
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 848
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 850
    return-void
.end method

.method public whitelist putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 699
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 700
    return-void
.end method

.method public blacklist putObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 484
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_10

    .line 485
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_106

    .line 486
    :cond_10
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_20

    .line 487
    move-object v0, p2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_106

    .line 488
    :cond_20
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_30

    .line 489
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_106

    .line 490
    :cond_30
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_40

    .line 491
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_106

    .line 492
    :cond_40
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4c

    .line 493
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_106

    .line 494
    :cond_4c
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_58

    .line 495
    move-object v0, p2

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_106

    .line 496
    :cond_58
    instance-of v0, p2, Landroid/util/Size;

    if-eqz v0, :cond_64

    .line 497
    move-object v0, p2

    check-cast v0, Landroid/util/Size;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    goto/16 :goto_106

    .line 498
    :cond_64
    instance-of v0, p2, Landroid/util/SizeF;

    if-eqz v0, :cond_70

    .line 499
    move-object v0, p2

    check-cast v0, Landroid/util/SizeF;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    goto/16 :goto_106

    .line 500
    :cond_70
    instance-of v0, p2, [Landroid/os/Parcelable;

    if-eqz v0, :cond_7c

    .line 501
    move-object v0, p2

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_106

    .line 502
    :cond_7c
    instance-of v0, p2, Ljava/util/ArrayList;

    if-eqz v0, :cond_88

    .line 503
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_106

    .line 504
    :cond_88
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_94

    .line 505
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_106

    .line 506
    :cond_94
    instance-of v0, p2, Landroid/util/SparseArray;

    if-eqz v0, :cond_a0

    .line 507
    move-object v0, p2

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto/16 :goto_106

    .line 508
    :cond_a0
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_ab

    .line 509
    move-object v0, p2

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_106

    .line 510
    :cond_ab
    instance-of v0, p2, [B

    if-eqz v0, :cond_b6

    .line 511
    move-object v0, p2

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_106

    .line 512
    :cond_b6
    instance-of v0, p2, [S

    if-eqz v0, :cond_c1

    .line 513
    move-object v0, p2

    check-cast v0, [S

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto :goto_106

    .line 514
    :cond_c1
    instance-of v0, p2, [C

    if-eqz v0, :cond_cc

    .line 515
    move-object v0, p2

    check-cast v0, [C

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto :goto_106

    .line 516
    :cond_cc
    instance-of v0, p2, [F

    if-eqz v0, :cond_d7

    .line 517
    move-object v0, p2

    check-cast v0, [F

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto :goto_106

    .line 518
    :cond_d7
    instance-of v0, p2, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_e2

    .line 519
    move-object v0, p2

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_106

    .line 520
    :cond_e2
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_ed

    .line 521
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_106

    .line 522
    :cond_ed
    instance-of v0, p2, Landroid/os/Binder;

    if-eqz v0, :cond_f8

    .line 523
    move-object v0, p2

    check-cast v0, Landroid/os/Binder;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_106

    .line 524
    :cond_f8
    instance-of v0, p2, Landroid/os/IBinder;

    if-eqz v0, :cond_103

    .line 525
    move-object v0, p2

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_106

    .line 527
    :cond_103
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    :goto_106
    return-void
.end method

.method public whitelist putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .line 599
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 600
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 602
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 603
    sget-object v0, Landroid/os/Bundle;->intentClass:Ljava/lang/Class;

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    sget-object v0, Landroid/os/Bundle;->intentClass:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 604
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setHasIntent(Z)V

    goto :goto_2e

    .line 605
    :cond_25
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_2e

    .line 606
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    iput-boolean v1, v0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    .line 608
    :cond_2e
    :goto_2e
    return-void
.end method

.method public whitelist putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    .line 643
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 644
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 646
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 647
    return-void
.end method

.method public whitelist putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 659
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 660
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 662
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 663
    return-void
.end method

.method public greylist putParcelableList(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 668
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 669
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 671
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 672
    return-void
.end method

.method public whitelist putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .line 736
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 737
    return-void
.end method

.method public whitelist putShort(Ljava/lang/String;S)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 564
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShort(Ljava/lang/String;S)V

    .line 565
    return-void
.end method

.method public whitelist putShortArray(Ljava/lang/String;[S)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .line 760
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShortArray(Ljava/lang/String;[S)V

    .line 761
    return-void
.end method

.method public whitelist putSize(Ljava/lang/String;Landroid/util/Size;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/Size;

    .line 618
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 619
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    return-void
.end method

.method public whitelist putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/SizeF;

    .line 630
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 631
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-void
.end method

.method public whitelist putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 684
    .local p2, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 685
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 687
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 688
    return-void
.end method

.method public whitelist putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 711
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 712
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1569
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;)V

    .line 1570
    const/16 v0, 0x400

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 1571
    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    .line 1572
    return-void
.end method

.method public whitelist remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 368
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->remove(Ljava/lang/String;)V

    .line 369
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_f

    .line 370
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 372
    :cond_f
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1b

    .line 373
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 375
    :cond_1b
    return-void
.end method

.method public greylist-max-o setAllowFds(Z)Z
    .registers 4
    .param p1, "allowFds"    # Z

    .line 291
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 292
    .local v0, "orig":Z
    :goto_9
    if-eqz p1, :cond_12

    .line 293
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_18

    .line 295
    :cond_12
    iget v1, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Landroid/os/Bundle;->mFlags:I

    .line 297
    :goto_18
    return v0
.end method

.method public whitelist setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 278
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 279
    return-void
.end method

.method blacklist setClassLoaderSameAsContainerBundleWhenRetrievedFirstTime(Landroid/os/BaseBundle;)V
    .registers 3
    .param p1, "containerBundle"    # Landroid/os/BaseBundle;

    .line 1056
    iget-boolean v0, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    if-nez v0, :cond_e

    .line 1057
    invoke-virtual {p1}, Landroid/os/BaseBundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->isFirstRetrievedFromABundle:Z

    .line 1060
    :cond_e
    return-void
.end method

.method public greylist-max-o setDefusable(Z)V
    .registers 3
    .param p1, "defusable"    # Z

    .line 317
    if-eqz p1, :cond_9

    .line 318
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    goto :goto_f

    .line 320
    :cond_9
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/os/Bundle;->mFlags:I

    .line 322
    :goto_f
    return-void
.end method

.method public declared-synchronized greylist-max-o toShortString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1595
    :try_start_1
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_2b

    .line 1596
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1597
    const-string v0, "EMPTY_PARCEL"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_33

    monitor-exit p0

    return-object v0

    .line 1599
    .end local p0    # "this":Landroid/os/Bundle;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_33

    monitor-exit p0

    return-object v0

    .line 1602
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_33

    monitor-exit p0

    return-object v0

    .line 1594
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1580
    :try_start_1
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_30

    .line 1581
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1582
    const-string v0, "Bundle[EMPTY_PARCEL]"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_51

    monitor-exit p0

    return-object v0

    .line 1584
    .end local p0    # "this":Landroid/os/Bundle;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 1585
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_51

    .line 1584
    monitor-exit p0

    return-object v0

    .line 1588
    :cond_30
    :try_start_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_51

    monitor-exit p0

    return-object v0

    .line 1579
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1555
    iget v0, p0, Landroid/os/Bundle;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v0

    .line 1557
    .local v0, "oldAllowFds":Z
    :try_start_d
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 1559
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 1560
    nop

    .line 1561
    return-void

    .line 1559
    :catchall_15
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 1560
    throw v1
.end method
