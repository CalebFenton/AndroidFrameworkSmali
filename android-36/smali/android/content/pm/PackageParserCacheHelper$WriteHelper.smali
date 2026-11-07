.class public Landroid/content/pm/PackageParserCacheHelper$WriteHelper;
.super Landroid/os/Parcel$ReadWriteHelper;
.source "PackageParserCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParserCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteHelper"
.end annotation


# instance fields
.field private final greylist-max-o mIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mParcel:Landroid/os/Parcel;

.field private final greylist-max-o mStartPos:I

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
    .registers 4
    .param p1, "p"    # Landroid/os/Parcel;

    .line 113
    invoke-direct {p0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mIndexes:Ljava/util/HashMap;

    .line 114
    iput-object p1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStartPos:I

    .line 116
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 119
    return-void
.end method


# virtual methods
.method public greylist-max-o finishAndUninstall()V
    .registers 4

    .line 163
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 165
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 166
    .local v0, "poolPosition":I
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 168
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    iget v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStartPos:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 169
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 176
    return-void
.end method

.method public greylist-max-o writeString(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 7
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "s"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 127
    .local v0, "cur":Ljava/lang/Integer;
    if-eqz v0, :cond_12

    .line 129
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 135
    :cond_12
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 136
    .local v1, "index":I
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mIndexes:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    .end local v1    # "index":I
    :goto_29
    return-void
.end method

.method public blacklist writeString16(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "s"    # Ljava/lang/String;

    .line 154
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public blacklist writeString8(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "s"    # Ljava/lang/String;

    .line 149
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 150
    return-void
.end method
