.class Landroid/media/BaseMediaParceledListSlice$1;
.super Landroid/os/Binder;
.source "BaseMediaParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/BaseMediaParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/BaseMediaParceledListSlice;

.field final synthetic blacklist val$N:I

.field final synthetic blacklist val$callFlags:I

.field final synthetic blacklist val$listElementClass:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Landroid/media/BaseMediaParceledListSlice;ILjava/lang/Class;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Landroid/media/BaseMediaParceledListSlice$1;->this$0:Landroid/media/BaseMediaParceledListSlice;

    iput p2, p0, Landroid/media/BaseMediaParceledListSlice$1;->val$N:I

    iput-object p3, p0, Landroid/media/BaseMediaParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Landroid/media/BaseMediaParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 189
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 191
    :goto_c
    iget p2, p0, Landroid/media/BaseMediaParceledListSlice$1;->val$N:I

    if-ge p1, p2, :cond_38

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    const/high16 p4, 0x10000

    if-ge p2, p4, :cond_38

    .line 192
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object p2, p0, Landroid/media/BaseMediaParceledListSlice$1;->this$0:Landroid/media/BaseMediaParceledListSlice;

    invoke-static {p2}, Landroid/media/BaseMediaParceledListSlice;->-$$Nest$fgetmList(Landroid/media/BaseMediaParceledListSlice;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 195
    iget-object p4, p0, Landroid/media/BaseMediaParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/media/BaseMediaParceledListSlice;->-$$Nest$smverifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 196
    iget-object p4, p0, Landroid/media/BaseMediaParceledListSlice$1;->this$0:Landroid/media/BaseMediaParceledListSlice;

    iget v1, p0, Landroid/media/BaseMediaParceledListSlice$1;->val$callFlags:I

    invoke-virtual {p4, p2, p3, v1}, Landroid/media/BaseMediaParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 201
    :cond_38
    iget p0, p0, Landroid/media/BaseMediaParceledListSlice$1;->val$N:I

    if-ge p1, p0, :cond_40

    const/4 p0, 0x0

    .line 203
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_40
    return v0
.end method
