.class public final Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
.super Ljava/lang/Object;
.source "InputMethodInfoSafeList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/InputMethodInfoSafeList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBuffer:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 133
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>([B)V
    .registers 2
    .param p1, "blob"    # [B

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->mBuffer:[B

    .line 106
    return-void
.end method

.method synthetic constructor blacklist <init>([BLcom/android/internal/inputmethod/InputMethodInfoSafeList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;-><init>([B)V

    return-void
.end method

.method public static blacklist create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Lcom/android/internal/inputmethod/InputMethodInfoSafeList;"
        }
    .end annotation

    .line 117
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p0, :cond_17

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_17

    .line 120
    :cond_9
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->toArray(Ljava/util/List;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->marshall([Landroid/view/inputmethod/InputMethodInfo;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;-><init>([B)V

    return-object v0

    .line 118
    :cond_17
    :goto_17
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->empty()Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist empty()Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .registers 2

    .line 130
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;-><init>([B)V

    return-object v0
.end method

.method public static blacklist extractFrom(Lcom/android/internal/inputmethod/InputMethodInfoSafeList;)Ljava/util/List;
    .registers 5
    .param p0, "from"    # Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/inputmethod/InputMethodInfoSafeList;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->mBuffer:[B

    .line 57
    .local v0, "buf":[B
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->mBuffer:[B

    .line 58
    if-eqz v0, :cond_17

    .line 59
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->unmarshall([B)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    .line 60
    .local v1, "array":[Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_17

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 64
    .end local v1    # "array":[Landroid/view/inputmethod/InputMethodInfo;
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method private static blacklist marshall([Landroid/view/inputmethod/InputMethodInfo;)[B
    .registers 3
    .param p0, "array"    # [Landroid/view/inputmethod/InputMethodInfo;

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 81
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    .line 83
    if-eqz v0, :cond_13

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 81
    :cond_13
    return-object v1

    .line 83
    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1a

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 86
    :cond_1a
    throw v1
.end method

.method private static blacklist toArray(Ljava/util/List;)[Landroid/view/inputmethod/InputMethodInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)[",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    .line 69
    .local p0, "original":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 70
    new-array v0, v0, [Landroid/view/inputmethod/InputMethodInfo;

    return-object v0

    .line 72
    :cond_6
    new-array v0, v0, [Landroid/view/inputmethod/InputMethodInfo;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method private static blacklist unmarshall([B)[Landroid/view/inputmethod/InputMethodInfo;
    .registers 4
    .param p0, "data"    # [B

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    .line 94
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 95
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    sget-object v1, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodInfo;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1c

    .line 98
    if-eqz v0, :cond_1b

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 96
    :cond_1b
    return-object v1

    .line 98
    :catchall_1c
    move-exception v1

    if-eqz v0, :cond_22

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    :cond_22
    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 154
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->mBuffer:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 155
    return-void
.end method
