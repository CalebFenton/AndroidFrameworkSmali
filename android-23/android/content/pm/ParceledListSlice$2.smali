.class Landroid/content/pm/ParceledListSlice$2;
.super Landroid/os/Binder;
.source "ParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/ParceledListSlice;

.field final synthetic val$N:I

.field final synthetic val$callFlags:I

.field final synthetic val$listElementClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Landroid/content/pm/ParceledListSlice;ILjava/lang/Class;I)V
    .locals 0
    .param p2, "val$N"    # I
    .param p4, "val$callFlags"    # I

    #@0
    .prologue
    .line 164
    .local p1, "this$0":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    .local p3, "val$listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Landroid/content/pm/ParceledListSlice$2;->this$0:Landroid/content/pm/ParceledListSlice;

    #@2
    iput p2, p0, Landroid/content/pm/ParceledListSlice$2;->val$N:I

    #@4
    iput-object p3, p0, Landroid/content/pm/ParceledListSlice$2;->val$listElementClass:Ljava/lang/Class;

    #@6
    iput p4, p0, Landroid/content/pm/ParceledListSlice$2;->val$callFlags:I

    #@8
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 168
    if-eq p1, v5, :cond_0

    #@3
    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 171
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v0

    #@c
    .line 172
    .local v0, "i":I
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->-get0()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->-get1()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "Writing more @"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, " of "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    iget v4, p0, Landroid/content/pm/ParceledListSlice$2;->val$N:I

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 173
    :cond_1
    :goto_0
    iget v2, p0, Landroid/content/pm/ParceledListSlice$2;->val$N:I

    #@3c
    if-ge v0, v2, :cond_3

    #@3e
    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    #@41
    move-result v2

    #@42
    const/high16 v3, 0x10000

    #@44
    if-ge v2, v3, :cond_3

    #@46
    .line 174
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@49
    .line 176
    iget-object v2, p0, Landroid/content/pm/ParceledListSlice$2;->this$0:Landroid/content/pm/ParceledListSlice;

    #@4b
    invoke-static {v2}, Landroid/content/pm/ParceledListSlice;->-get2(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;

    #@4e
    move-result-object v2

    #@4f
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v1

    #@53
    check-cast v1, Landroid/os/Parcelable;

    #@55
    .line 177
    .local v1, "parcelable":Landroid/os/Parcelable;, "TT;"
    iget-object v2, p0, Landroid/content/pm/ParceledListSlice$2;->val$listElementClass:Ljava/lang/Class;

    #@57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v2, v3}, Landroid/content/pm/ParceledListSlice;->-wrap0(Ljava/lang/Class;Ljava/lang/Class;)V

    #@5e
    .line 178
    iget v2, p0, Landroid/content/pm/ParceledListSlice$2;->val$callFlags:I

    #@60
    invoke-interface {v1, p3, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@63
    .line 180
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->-get0()Z

    #@66
    move-result v2

    #@67
    if-eqz v2, :cond_2

    #@69
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->-get1()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    new-instance v3, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v4, "Wrote extra #"

    #@75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    const-string/jumbo v4, ": "

    #@80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v3

    #@84
    iget-object v4, p0, Landroid/content/pm/ParceledListSlice$2;->this$0:Landroid/content/pm/ParceledListSlice;

    #@86
    invoke-static {v4}, Landroid/content/pm/ParceledListSlice;->-get2(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;

    #@89
    move-result-object v4

    #@8a
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v3

    #@96
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@99
    .line 181
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@9b
    goto :goto_0

    #@9c
    .line 183
    .end local v1    # "parcelable":Landroid/os/Parcelable;, "TT;"
    :cond_3
    iget v2, p0, Landroid/content/pm/ParceledListSlice$2;->val$N:I

    #@9e
    if-ge v0, v2, :cond_5

    #@a0
    .line 184
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->-get0()Z

    #@a3
    move-result v2

    #@a4
    if-eqz v2, :cond_4

    #@a6
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->-get1()Ljava/lang/String;

    #@a9
    move-result-object v2

    #@aa
    new-instance v3, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v4, "Breaking @"

    #@b2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v3

    #@b6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    const-string/jumbo v4, " of "

    #@bd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v3

    #@c1
    iget v4, p0, Landroid/content/pm/ParceledListSlice$2;->val$N:I

    #@c3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v3

    #@c7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v3

    #@cb
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ce
    .line 185
    :cond_4
    const/4 v2, 0x0

    #@cf
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@d2
    .line 187
    :cond_5
    return v5
.end method
