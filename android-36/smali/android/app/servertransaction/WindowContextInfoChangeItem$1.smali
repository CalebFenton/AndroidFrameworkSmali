.class Landroid/app/servertransaction/WindowContextInfoChangeItem$1;
.super Ljava/lang/Object;
.source "WindowContextInfoChangeItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/servertransaction/WindowContextInfoChangeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/servertransaction/WindowContextInfoChangeItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/servertransaction/WindowContextInfoChangeItem;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    new-instance v0, Landroid/app/servertransaction/WindowContextInfoChangeItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/servertransaction/WindowContextInfoChangeItem;-><init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowContextInfoChangeItem-IA;)V

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

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/WindowContextInfoChangeItem$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/servertransaction/WindowContextInfoChangeItem;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/servertransaction/WindowContextInfoChangeItem;
    .registers 3
    .param p1, "size"    # I

    .line 78
    new-array v0, p1, [Landroid/app/servertransaction/WindowContextInfoChangeItem;

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

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/WindowContextInfoChangeItem$1;->newArray(I)[Landroid/app/servertransaction/WindowContextInfoChangeItem;

    move-result-object p1

    return-object p1
.end method
