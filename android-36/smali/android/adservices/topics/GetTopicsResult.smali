.class public final Landroid/adservices/topics/GetTopicsResult;
.super Landroid/adservices/common/AdServicesResponse;
.source "GetTopicsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/topics/GetTopicsResult$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/topics/GetTopicsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEncapsulatedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist mEncryptedTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist mEncryptionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mModelVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTaxonomyVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Landroid/adservices/topics/GetTopicsResult$1;

    invoke-direct {v0}, Landroid/adservices/topics/GetTopicsResult$1;-><init>()V

    sput-object v0, Landroid/adservices/topics/GetTopicsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .param p1, "resultCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 56
    .local p3, "taxonomyVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "modelVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p5, "topics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "encryptedTopics":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p7, "encryptionKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "encapsulatedKeys":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0, p1, p2}, Landroid/adservices/common/AdServicesResponse;-><init>(ILjava/lang/String;)V

    .line 57
    iput-object p3, p0, Landroid/adservices/topics/GetTopicsResult;->mTaxonomyVersions:Ljava/util/List;

    .line 58
    iput-object p4, p0, Landroid/adservices/topics/GetTopicsResult;->mModelVersions:Ljava/util/List;

    .line 59
    iput-object p5, p0, Landroid/adservices/topics/GetTopicsResult;->mTopics:Ljava/util/List;

    .line 60
    iput-object p6, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptedTopics:Ljava/util/List;

    .line 61
    iput-object p7, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptionKeys:Ljava/util/List;

    .line 62
    iput-object p8, p0, Landroid/adservices/topics/GetTopicsResult;->mEncapsulatedKeys:Ljava/util/List;

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/adservices/topics/GetTopicsResult-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/adservices/topics/GetTopicsResult;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/adservices/common/AdServicesResponse;-><init>(ILjava/lang/String;)V

    .line 68
    invoke-static {p1}, Landroid/adservices/topics/GetTopicsResult;->readLongList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mTaxonomyVersions:Ljava/util/List;

    .line 69
    invoke-static {p1}, Landroid/adservices/topics/GetTopicsResult;->readLongList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mModelVersions:Ljava/util/List;

    .line 70
    invoke-static {p1}, Landroid/adservices/topics/GetTopicsResult;->readIntegerList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mTopics:Ljava/util/List;

    .line 71
    invoke-static {p1}, Landroid/adservices/topics/GetTopicsResult;->readByteArrayList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptedTopics:Ljava/util/List;

    .line 72
    invoke-static {p1}, Landroid/adservices/topics/GetTopicsResult;->readStringList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptionKeys:Ljava/util/List;

    .line 73
    invoke-static {p1}, Landroid/adservices/topics/GetTopicsResult;->readByteArrayList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mEncapsulatedKeys:Ljava/util/List;

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/topics/GetTopicsResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/topics/GetTopicsResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist equals(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 220
    .local p0, "list1":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "list2":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_30

    if-nez p1, :cond_6

    goto :goto_30

    .line 223
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_11

    .line 224
    return v0

    .line 226
    :cond_11
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 227
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 228
    return v0

    .line 226
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 231
    .end local v1    # "i":I
    :cond_2e
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_30
    :goto_30
    return v0
.end method

.method private static blacklist hashCode(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation

    .line 248
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .line 249
    .local v0, "hash":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 250
    .local v2, "bytes":[B
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    .line 251
    .end local v2    # "bytes":[B
    goto :goto_5

    .line 252
    :cond_17
    return v0
.end method

.method private blacklist prettyPrint(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 186
    .local p1, "listOfByteArrays":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 189
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2b

    .line 191
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 194
    .end local v1    # "index":I
    :cond_2e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist readByteArrayList(Landroid/os/Parcel;)Ljava/util/List;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .local v1, "toReadCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_16

    .line 301
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 304
    .end local v2    # "i":I
    :cond_16
    return-object v0
.end method

.method private static blacklist readIntegerList(Landroid/os/Parcel;)Ljava/util/List;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 274
    .local v1, "toReadCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 275
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 278
    .end local v2    # "i":I
    :cond_1a
    return-object v0
.end method

.method private static blacklist readLongList(Landroid/os/Parcel;)Ljava/util/List;
    .registers 6
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 261
    .local v1, "toReadCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 262
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 265
    .end local v2    # "i":I
    :cond_1a
    return-object v0
.end method

.method private static blacklist readStringList(Landroid/os/Parcel;)Ljava/util/List;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 287
    .local v1, "toReadCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_16

    .line 288
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 291
    .end local v2    # "i":I
    :cond_16
    return-object v0
.end method

.method private static blacklist writeByteArrayList(Landroid/os/Parcel;Ljava/util/List;)V
    .registers 4
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 345
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-nez p1, :cond_7

    .line 346
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    return-void

    .line 349
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 351
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 352
    .end local v1    # "bytes":[B
    goto :goto_12

    .line 353
    :cond_22
    return-void
.end method

.method private static blacklist writeIntegerList(Landroid/os/Parcel;Ljava/util/List;)V
    .registers 5
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 321
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p1, :cond_7

    .line 322
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    return-void

    .line 325
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 327
    .local v1, "integer":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    .end local v1    # "integer":Ljava/lang/Integer;
    goto :goto_12

    .line 329
    :cond_26
    return-void
.end method

.method private static blacklist writeLongList(Landroid/os/Parcel;Ljava/util/List;)V
    .registers 6
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p1, :cond_7

    .line 310
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    return-void

    .line 313
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 315
    .local v1, "l":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 316
    .end local v1    # "l":Ljava/lang/Long;
    goto :goto_12

    .line 317
    :cond_26
    return-void
.end method

.method private static blacklist writeStringList(Landroid/os/Parcel;Ljava/util/List;)V
    .registers 4
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 333
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 334
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    return-void

    .line 337
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 339
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    .end local v1    # "string":Ljava/lang/String;
    goto :goto_12

    .line 341
    :cond_22
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 200
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 201
    return v0

    .line 204
    :cond_4
    instance-of v1, p1, Landroid/adservices/topics/GetTopicsResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 205
    return v2

    .line 208
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/topics/GetTopicsResult;

    .line 210
    .local v1, "that":Landroid/adservices/topics/GetTopicsResult;
    iget v3, p0, Landroid/adservices/topics/GetTopicsResult;->mStatusCode:I

    iget v4, v1, Landroid/adservices/topics/GetTopicsResult;->mStatusCode:I

    if-ne v3, v4, :cond_50

    iget-object v3, p0, Landroid/adservices/topics/GetTopicsResult;->mErrorMessage:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/topics/GetTopicsResult;->mErrorMessage:Ljava/lang/String;

    .line 211
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/adservices/topics/GetTopicsResult;->mTaxonomyVersions:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/topics/GetTopicsResult;->mTaxonomyVersions:Ljava/util/List;

    .line 212
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/adservices/topics/GetTopicsResult;->mModelVersions:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/topics/GetTopicsResult;->mModelVersions:Ljava/util/List;

    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/adservices/topics/GetTopicsResult;->mTopics:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/topics/GetTopicsResult;->mTopics:Ljava/util/List;

    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptedTopics:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/topics/GetTopicsResult;->mEncryptedTopics:Ljava/util/List;

    .line 215
    invoke-static {v3, v4}, Landroid/adservices/topics/GetTopicsResult;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptionKeys:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/topics/GetTopicsResult;->mEncryptionKeys:Ljava/util/List;

    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    goto :goto_51

    :cond_50
    move v0, v2

    .line 210
    :goto_51
    return v0
.end method

.method public blacklist getEncapsulatedKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mEncapsulatedKeys:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getEncryptedTopics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptedTopics:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getEncryptionKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptionKeys:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getModelVersions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mModelVersions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getResultCode()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/adservices/topics/GetTopicsResult;->mStatusCode:I

    return v0
.end method

.method public blacklist getTaxonomyVersions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mTaxonomyVersions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTopics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mTopics:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 236
    iget v0, p0, Landroid/adservices/topics/GetTopicsResult;->mStatusCode:I

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/adservices/topics/GetTopicsResult;->mErrorMessage:Ljava/lang/String;

    iget-object v3, p0, Landroid/adservices/topics/GetTopicsResult;->mTaxonomyVersions:Ljava/util/List;

    iget-object v4, p0, Landroid/adservices/topics/GetTopicsResult;->mModelVersions:Ljava/util/List;

    iget-object v5, p0, Landroid/adservices/topics/GetTopicsResult;->mTopics:Ljava/util/List;

    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptedTopics:Ljava/util/List;

    .line 242
    invoke-static {v0}, Landroid/adservices/topics/GetTopicsResult;->hashCode(Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptionKeys:Ljava/util/List;

    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptedTopics:Ljava/util/List;

    .line 244
    invoke-static {v0}, Landroid/adservices/topics/GetTopicsResult;->hashCode(Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 236
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSuccess()Z
    .registers 2

    .line 113
    invoke-virtual {p0}, Landroid/adservices/topics/GetTopicsResult;->getResultCode()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetTopicsResult{mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/topics/GetTopicsResult;->mStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mErrorMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/topics/GetTopicsResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTaxonomyVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/topics/GetTopicsResult;->mTaxonomyVersions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModelVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/topics/GetTopicsResult;->mModelVersions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTopics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/topics/GetTopicsResult;->mTopics:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEncryptedTopics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptedTopics:Ljava/util/List;

    .line 177
    invoke-direct {p0, v1}, Landroid/adservices/topics/GetTopicsResult;->prettyPrint(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEncryptionKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptionKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEncapsulatedKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/topics/GetTopicsResult;->mEncapsulatedKeys:Ljava/util/List;

    .line 181
    invoke-direct {p0, v1}, Landroid/adservices/topics/GetTopicsResult;->prettyPrint(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget v0, p0, Landroid/adservices/topics/GetTopicsResult;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mTaxonomyVersions:Ljava/util/List;

    invoke-static {p1, v0}, Landroid/adservices/topics/GetTopicsResult;->writeLongList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mModelVersions:Ljava/util/List;

    invoke-static {p1, v0}, Landroid/adservices/topics/GetTopicsResult;->writeLongList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mTopics:Ljava/util/List;

    invoke-static {p1, v0}, Landroid/adservices/topics/GetTopicsResult;->writeIntegerList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 103
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptedTopics:Ljava/util/List;

    invoke-static {p1, v0}, Landroid/adservices/topics/GetTopicsResult;->writeByteArrayList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 104
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mEncryptionKeys:Ljava/util/List;

    invoke-static {p1, v0}, Landroid/adservices/topics/GetTopicsResult;->writeStringList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 105
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult;->mEncapsulatedKeys:Ljava/util/List;

    invoke-static {p1, v0}, Landroid/adservices/topics/GetTopicsResult;->writeByteArrayList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 106
    return-void
.end method
