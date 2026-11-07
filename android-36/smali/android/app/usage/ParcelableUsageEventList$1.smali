.class Landroid/app/usage/ParcelableUsageEventList$1;
.super Landroid/os/Binder;
.source "ParcelableUsageEventList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/usage/ParcelableUsageEventList;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/usage/ParcelableUsageEventList;

.field final synthetic blacklist val$N:I

.field final synthetic blacklist val$callFlags:I


# direct methods
.method constructor blacklist <init>(Landroid/app/usage/ParcelableUsageEventList;II)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/usage/ParcelableUsageEventList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 136
    iput-object p1, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    iput p2, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$N:I

    iput p3, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 142
    :cond_8
    iget-object v1, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    invoke-static {v1}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$fgetmList(Landroid/app/usage/ParcelableUsageEventList;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .local v1, "i":I
    const/4 v2, 0x0

    :try_start_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v3, 0x0

    .line 156
    .local v3, "count":I
    :goto_19
    iget v4, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$N:I

    if-ge v1, v4, :cond_41

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_41

    .line 157
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v4, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    invoke-static {v4}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$fgetmList(Landroid/app/usage/ParcelableUsageEventList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    .line 160
    .local v4, "event":Landroid/app/usage/UsageEvents$Event;
    iget-object v5, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    iget v6, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$callFlags:I

    invoke-static {v5, v4, p3, v6}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$mwriteEventToParcel(Landroid/app/usage/ParcelableUsageEventList;Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V

    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 166
    nop

    .end local v4    # "event":Landroid/app/usage/UsageEvents$Event;
    add-int/lit8 v3, v3, 0x1

    .line 167
    goto :goto_19

    .line 168
    :cond_41
    iget v4, p0, Landroid/app/usage/ParcelableUsageEventList$1;->val$N:I

    if-ge v1, v4, :cond_4a

    .line 173
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4f

    .line 176
    :cond_4a
    iget-object v4, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    invoke-static {v4, v2}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$fputmList(Landroid/app/usage/ParcelableUsageEventList;Ljava/util/List;)V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_4f} :catch_51

    .line 182
    .end local v3    # "count":I
    :goto_4f
    nop

    .line 183
    return v0

    .line 178
    :catch_51
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/app/usage/ParcelableUsageEventList$1;->this$0:Landroid/app/usage/ParcelableUsageEventList;

    invoke-static {v3, v2}, Landroid/app/usage/ParcelableUsageEventList;->-$$Nest$fputmList(Landroid/app/usage/ParcelableUsageEventList;Ljava/util/List;)V

    .line 181
    throw v0

    .line 143
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "i":I
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to transfer null list, did transfer finish?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
