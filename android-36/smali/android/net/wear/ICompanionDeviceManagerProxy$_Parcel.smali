.class public Landroid/net/wear/ICompanionDeviceManagerProxy$_Parcel;
.super Ljava/lang/Object;
.source "ICompanionDeviceManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wear/ICompanionDeviceManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_Parcel"
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/net/wear/ICompanionDeviceManagerProxy$_Parcel;->writeTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist writeTypedList(Landroid/os/Parcel;Ljava/util/List;I)V
    .registers 6
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 146
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_7

    .line 147
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 149
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 150
    .local v0, "N":I
    const/4 v1, 0x0

    .line 151
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 153
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 157
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1d
    :goto_1d
    return-void
.end method
