.class public Landroid/content/pm/PackageParserCacheHelper$ReadHelper;
.super Landroid/os/Parcel$ReadWriteHelper;
.source "PackageParserCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParserCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadHelper"
.end annotation


# instance fields
.field private final greylist-max-o mParcel:Landroid/os/Parcel;

.field private final greylist-max-o mStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    .line 47
    return-void
.end method


# virtual methods
.method public greylist-max-o readString(Landroid/os/Parcel;)Ljava/lang/String;
    .registers 4
    .param p1, "p"    # Landroid/os/Parcel;

    .line 85
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist readString16(Landroid/os/Parcel;)Ljava/lang/String;
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 95
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readString8(Landroid/os/Parcel;)Ljava/lang/String;
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 90
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o startAndInstall()V
    .registers 5

    .line 56
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .local v0, "poolPosition":I
    if-ltz v0, :cond_2a

    .line 62
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 65
    .local v1, "startPosition":I
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    iget-object v3, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 69
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p0}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 79
    return-void

    .line 60
    .end local v1    # "startPosition":I
    :cond_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid string pool position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
