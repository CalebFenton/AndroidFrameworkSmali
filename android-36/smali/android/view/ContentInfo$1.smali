.class Landroid/view/ContentInfo$1;
.super Ljava/lang/Object;
.source "ContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ContentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/ContentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/ContentInfo;
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 469
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    .line 470
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 471
    .local v1, "source":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    .local v2, "flags":I
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 473
    .local v3, "linkUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 474
    .local v4, "extras":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 475
    .local v5, "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    .line 476
    sget-object v6, Landroid/view/inputmethod/InputContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Landroid/view/inputmethod/InputContentInfo;

    .line 478
    :cond_2c
    const/4 v6, 0x0

    .line 479
    .local v6, "dragAndDropPermissions":Landroid/view/DragAndDropPermissions;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3c

    .line 480
    sget-object v7, Landroid/view/DragAndDropPermissions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/view/DragAndDropPermissions;

    .line 482
    :cond_3c
    new-instance v7, Landroid/view/ContentInfo$Builder;

    invoke-direct {v7, v0, v1}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 483
    invoke-virtual {v7, v2}, Landroid/view/ContentInfo$Builder;->setFlags(I)Landroid/view/ContentInfo$Builder;

    move-result-object v7

    .line 484
    invoke-virtual {v7, v3}, Landroid/view/ContentInfo$Builder;->setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;

    move-result-object v7

    .line 485
    invoke-virtual {v7, v4}, Landroid/view/ContentInfo$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;

    move-result-object v7

    .line 486
    invoke-virtual {v7, v5}, Landroid/view/ContentInfo$Builder;->setInputContentInfo(Landroid/view/inputmethod/InputContentInfo;)Landroid/view/ContentInfo$Builder;

    move-result-object v7

    .line 487
    invoke-virtual {v7, v6}, Landroid/view/ContentInfo$Builder;->setDragAndDropPermissions(Landroid/view/DragAndDropPermissions;)Landroid/view/ContentInfo$Builder;

    move-result-object v7

    .line 488
    invoke-virtual {v7}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v7

    .line 482
    return-object v7
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

    .line 466
    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/ContentInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/ContentInfo;
    .registers 3
    .param p1, "size"    # I

    .line 493
    new-array v0, p1, [Landroid/view/ContentInfo;

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

    .line 466
    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$1;->newArray(I)[Landroid/view/ContentInfo;

    move-result-object p1

    return-object p1
.end method
