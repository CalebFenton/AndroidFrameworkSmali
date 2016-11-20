.class final Landroid/location/Criteria$1;
.super Ljava/lang/Object;
.source "Criteria.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Criteria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/location/Criteria;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Criteria;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 331
    new-instance v0, Landroid/location/Criteria;

    #@4
    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    #@7
    .line 332
    .local v0, "c":Landroid/location/Criteria;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v1

    #@b
    invoke-static {v0, v1}, Landroid/location/Criteria;->-set4(Landroid/location/Criteria;I)I

    #@e
    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v1

    #@12
    invoke-static {v0, v1}, Landroid/location/Criteria;->-set8(Landroid/location/Criteria;I)I

    #@15
    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v1

    #@19
    invoke-static {v0, v1}, Landroid/location/Criteria;->-set6(Landroid/location/Criteria;I)I

    #@1c
    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v1

    #@20
    invoke-static {v0, v1}, Landroid/location/Criteria;->-set1(Landroid/location/Criteria;I)I

    #@23
    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    invoke-static {v0, v1}, Landroid/location/Criteria;->-set5(Landroid/location/Criteria;I)I

    #@2a
    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_0

    #@30
    move v1, v2

    #@31
    :goto_0
    invoke-static {v0, v1}, Landroid/location/Criteria;->-set0(Landroid/location/Criteria;Z)Z

    #@34
    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_1

    #@3a
    move v1, v2

    #@3b
    :goto_1
    invoke-static {v0, v1}, Landroid/location/Criteria;->-set2(Landroid/location/Criteria;Z)Z

    #@3e
    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_2

    #@44
    move v1, v2

    #@45
    :goto_2
    invoke-static {v0, v1}, Landroid/location/Criteria;->-set7(Landroid/location/Criteria;Z)Z

    #@48
    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_3

    #@4e
    :goto_3
    invoke-static {v0, v2}, Landroid/location/Criteria;->-set3(Landroid/location/Criteria;Z)Z

    #@51
    .line 341
    return-object v0

    #@52
    :cond_0
    move v1, v3

    #@53
    .line 337
    goto :goto_0

    #@54
    :cond_1
    move v1, v3

    #@55
    .line 338
    goto :goto_1

    #@56
    :cond_2
    move v1, v3

    #@57
    .line 339
    goto :goto_2

    #@58
    :cond_3
    move v2, v3

    #@59
    .line 340
    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 330
    invoke-virtual {p0, p1}, Landroid/location/Criteria$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Criteria;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/Criteria;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 346
    new-array v0, p1, [Landroid/location/Criteria;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 345
    invoke-virtual {p0, p1}, Landroid/location/Criteria$1;->newArray(I)[Landroid/location/Criteria;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
