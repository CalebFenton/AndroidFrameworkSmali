.class Landroid/os/Message$1;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/Message;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/Message;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 637
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 638
    .local v0, "msg":Landroid/os/Message;
    invoke-static {v0, p1}, Landroid/os/Message;->-$$Nest$mreadFromParcel(Landroid/os/Message;Landroid/os/Parcel;)V

    .line 639
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

    .line 635
    invoke-virtual {p0, p1}, Landroid/os/Message$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/Message;
    .registers 3
    .param p1, "size"    # I

    .line 643
    new-array v0, p1, [Landroid/os/Message;

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

    .line 635
    invoke-virtual {p0, p1}, Landroid/os/Message$1;->newArray(I)[Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method
