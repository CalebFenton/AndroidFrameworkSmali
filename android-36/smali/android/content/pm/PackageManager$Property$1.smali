.class Landroid/content/pm/PackageManager$Property$1;
.super Ljava/lang/Object;
.source "PackageManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager$Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageManager$Property;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageManager$Property;
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 550
    .local v6, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 551
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 552
    .local v5, "className":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne v6, v0, :cond_1d

    .line 553
    new-instance v0, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 554
    :cond_1d
    const/4 v0, 0x2

    if-ne v6, v0, :cond_2a

    .line 555
    new-instance v0, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 556
    :cond_2a
    const/4 v0, 0x3

    if-ne v6, v0, :cond_38

    .line 557
    new-instance v0, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 558
    :cond_38
    const/4 v0, 0x4

    if-ne v6, v0, :cond_46

    .line 559
    new-instance v0, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 560
    :cond_46
    const/4 v0, 0x5

    if-ne v6, v0, :cond_53

    .line 561
    new-instance v0, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 563
    :cond_53
    const/4 v0, 0x0

    return-object v0
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

    .line 545
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager$Property$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageManager$Property;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/PackageManager$Property;
    .registers 3
    .param p1, "size"    # I

    .line 568
    new-array v0, p1, [Landroid/content/pm/PackageManager$Property;

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

    .line 545
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager$Property$1;->newArray(I)[Landroid/content/pm/PackageManager$Property;

    move-result-object p1

    return-object p1
.end method
