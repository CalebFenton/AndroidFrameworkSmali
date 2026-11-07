.class Landroid/service/autofill/CharSequenceTransformation$1;
.super Ljava/lang/Object;
.source "CharSequenceTransformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CharSequenceTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/CharSequenceTransformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CharSequenceTransformation;
    .registers 11
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 216
    const/4 v0, 0x0

    const-class v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/autofill/AutofillId;

    .line 217
    .local v0, "ids":[Landroid/view/autofill/AutofillId;
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/util/regex/Pattern;

    .line 218
    .local v1, "regexs":[Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "substs":[Ljava/lang/String;
    new-instance v3, Landroid/service/autofill/CharSequenceTransformation$Builder;

    const/4 v4, 0x0

    aget-object v5, v0, v4

    aget-object v6, v1, v4

    aget-object v4, v2, v4

    invoke-direct {v3, v5, v6, v4}, Landroid/service/autofill/CharSequenceTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 226
    .local v3, "builder":Landroid/service/autofill/CharSequenceTransformation$Builder;
    array-length v4, v0

    .line 227
    .local v4, "size":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_21
    if-ge v5, v4, :cond_2f

    .line 228
    aget-object v6, v0, v5

    aget-object v7, v1, v5

    aget-object v8, v2, v5

    invoke-virtual {v3, v6, v7, v8}, Landroid/service/autofill/CharSequenceTransformation$Builder;->addField(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;Ljava/lang/String;)Landroid/service/autofill/CharSequenceTransformation$Builder;

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 230
    .end local v5    # "i":I
    :cond_2f
    invoke-virtual {v3}, Landroid/service/autofill/CharSequenceTransformation$Builder;->build()Landroid/service/autofill/CharSequenceTransformation;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Landroid/service/autofill/CharSequenceTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CharSequenceTransformation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/CharSequenceTransformation;
    .registers 3
    .param p1, "size"    # I

    .line 235
    new-array v0, p1, [Landroid/service/autofill/CharSequenceTransformation;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Landroid/service/autofill/CharSequenceTransformation$1;->newArray(I)[Landroid/service/autofill/CharSequenceTransformation;

    move-result-object p1

    return-object p1
.end method
