.class Landroid/text/FontConfig$1;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/text/FontConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig;
    .registers 11
    .param p1, "source"    # Landroid/os/Parcel;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 183
    .local v2, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    sget-object v0, Landroid/text/FontConfig$FontFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v3, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    sget-object v0, Landroid/text/FontConfig$Alias;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v4, "familyLists":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$NamedFamilyList;>;"
    sget-object v0, Landroid/text/FontConfig$NamedFamilyList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 189
    .local v6, "lastModifiedDate":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 190
    .local v8, "configVersion":I
    new-instance v1, Landroid/text/FontConfig;

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v1 .. v8}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    .line 190
    return-object v1
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

    .line 179
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/text/FontConfig;
    .registers 3
    .param p1, "size"    # I

    .line 197
    new-array v0, p1, [Landroid/text/FontConfig;

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

    .line 179
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$1;->newArray(I)[Landroid/text/FontConfig;

    move-result-object p1

    return-object p1
.end method
