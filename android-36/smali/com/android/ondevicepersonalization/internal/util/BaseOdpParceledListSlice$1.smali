.class Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;
.super Landroid/os/Binder;
.source "BaseOdpParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;

.field final synthetic blacklist val$callFlags:I

.field final synthetic blacklist val$listElementClass:Ljava/lang/Class;

.field final synthetic blacklist val$numItems:I


# direct methods
.method constructor blacklist <init>(Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;ILjava/lang/Class;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;
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

    .line 175
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;, "Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;"
    iput-object p1, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;->this$0:Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;

    iput p2, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;->val$numItems:I

    iput-object p3, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;, "Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;"
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 182
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    .local v1, "i":I
    :goto_c
    iget v2, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;->val$numItems:I

    if-ge v1, v2, :cond_3b

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-static {}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->-$$Nest$sfgetMAX_IPC_SIZE()I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 185
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v2, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;->this$0:Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;

    invoke-static {v2}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->-$$Nest$fgetmList(Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 188
    .local v2, "parcelable":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->-$$Nest$smverifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 189
    iget-object v3, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;->this$0:Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;

    iget v4, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;->val$callFlags:I

    invoke-virtual {v3, v2, p3, v4}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 194
    nop

    .end local v2    # "parcelable":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, 0x1

    .line 195
    goto :goto_c

    .line 196
    :cond_3b
    iget v2, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;->val$numItems:I

    if-ge v1, v2, :cond_43

    .line 198
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    :cond_43
    return v0
.end method
