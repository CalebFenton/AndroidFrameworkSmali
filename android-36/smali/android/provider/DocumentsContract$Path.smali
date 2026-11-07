.class public final Landroid/provider/DocumentsContract$Path;
.super Ljava/lang/Object;
.source "DocumentsContract.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DocumentsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Path"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/provider/DocumentsContract$Path;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mRootId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1862
    new-instance v0, Landroid/provider/DocumentsContract$Path$1;

    invoke-direct {v0}, Landroid/provider/DocumentsContract$Path$1;-><init>()V

    sput-object v0, Landroid/provider/DocumentsContract$Path;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "rootId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1796
    .local p2, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1797
    const-string/jumbo v0, "path"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 1798
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 1800
    iput-object p1, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    .line 1801
    iput-object p2, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    .line 1802
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1859
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1823
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1824
    return v0

    .line 1826
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    instance-of v2, p1, Landroid/provider/DocumentsContract$Path;

    if-nez v2, :cond_c

    goto :goto_26

    .line 1829
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/provider/DocumentsContract$Path;

    .line 1830
    .local v2, "path":Landroid/provider/DocumentsContract$Path;
    iget-object v3, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    iget-object v4, v2, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    .line 1831
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    .line 1830
    :goto_25
    return v0

    .line 1827
    .end local v2    # "path":Landroid/provider/DocumentsContract$Path;
    :cond_26
    :goto_26
    return v1
.end method

.method public whitelist getPath()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1818
    iget-object v0, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getRootId()Ljava/lang/String;
    .registers 2

    .line 1809
    iget-object v0, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1836
    iget-object v0, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    iget-object v1, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1842
    const-string v1, "DocumentsContract.Path{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1843
    const-string/jumbo v1, "rootId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    .line 1844
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1845
    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    .line 1846
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1847
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1848
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1841
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1853
    iget-object v0, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1854
    iget-object v0, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1855
    return-void
.end method
