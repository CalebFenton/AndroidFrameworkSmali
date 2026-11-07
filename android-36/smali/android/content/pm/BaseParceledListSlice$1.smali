.class Landroid/content/pm/BaseParceledListSlice$1;
.super Landroid/os/Binder;
.source "BaseParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/BaseParceledListSlice;

.field final synthetic blacklist val$N:I

.field final synthetic blacklist val$callFlags:I

.field final synthetic blacklist val$listElementClass:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/BaseParceledListSlice;ILjava/lang/Class;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/content/pm/BaseParceledListSlice;
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

    .line 197
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice$1;, "Landroid/content/pm/BaseParceledListSlice$1;"
    iput-object p1, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    iput p2, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    iput-object p3, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice$1;, "Landroid/content/pm/BaseParceledListSlice$1;"
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 203
    :cond_8
    iget-object v1, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {v1}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fgetmList(Landroid/content/pm/BaseParceledListSlice;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b8

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 215
    .local v1, "i":I
    const/4 v2, 0x0

    :try_start_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    :goto_18
    iget v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1a} :catch_b1

    const-string v4, "ParceledListSlice"

    const/high16 v5, 0x10000

    if-ge v1, v3, :cond_7c

    :try_start_20
    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-ge v3, v5, :cond_7c

    .line 221
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    .line 225
    .local v3, "preWriteSize":I
    iget-object v5, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {v5}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fgetmList(Landroid/content/pm/BaseParceledListSlice;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 226
    .local v5, "parcelable":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$smverifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 227
    iget-object v6, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    iget v7, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$callFlags:I

    invoke-virtual {v6, v5, p3, v7}, Landroid/content/pm/BaseParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    sub-int/2addr v6, v3

    .line 230
    .local v6, "elmSize":I
    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$sfgetWARN_ELM_SIZE()I

    move-result v7

    if-lt v6, v7, :cond_78

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Element #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_78
    nop

    .end local v3    # "preWriteSize":I
    .end local v5    # "parcelable":Ljava/lang/Object;, "TT;"
    .end local v6    # "elmSize":I
    add-int/lit8 v1, v1, 0x1

    .line 236
    goto :goto_18

    .line 237
    :cond_7c
    iget v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    if-ge v1, v3, :cond_85

    .line 239
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8a

    .line 242
    :cond_85
    iget-object v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {v3, v2}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fputmList(Landroid/content/pm/BaseParceledListSlice;Ljava/util/List;)V

    .line 244
    :goto_8a
    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$sfgetWARN_ELM_SIZE()I

    move-result v6

    add-int/2addr v6, v5

    if-lt v3, v6, :cond_af

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Overly large reply size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_af} :catch_b1

    .line 251
    :cond_af
    nop

    .line 252
    return v0

    .line 247
    :catch_b1
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {v3, v2}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fputmList(Landroid/content/pm/BaseParceledListSlice;Ljava/util/List;)V

    .line 250
    throw v0

    .line 204
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "i":I
    :cond_b8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to transfer null list, did transfer finish?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
