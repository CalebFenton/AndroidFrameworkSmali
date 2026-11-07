.class Landroid/widget/ExpandableListConnector$GroupMetadata$1;
.super Ljava/lang/Object;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListConnector$GroupMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/widget/ExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/widget/ExpandableListConnector$GroupMetadata;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 934
    nop

    .line 935
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 936
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 937
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 938
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 934
    invoke-static {v0, v1, v2, v3, v4}, Landroid/widget/ExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 939
    .local v0, "gm":Landroid/widget/ExpandableListConnector$GroupMetadata;
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

    .line 931
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector$GroupMetadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/ExpandableListConnector$GroupMetadata;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/widget/ExpandableListConnector$GroupMetadata;
    .registers 3
    .param p1, "size"    # I

    .line 943
    new-array v0, p1, [Landroid/widget/ExpandableListConnector$GroupMetadata;

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

    .line 931
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector$GroupMetadata$1;->newArray(I)[Landroid/widget/ExpandableListConnector$GroupMetadata;

    move-result-object p1

    return-object p1
.end method
