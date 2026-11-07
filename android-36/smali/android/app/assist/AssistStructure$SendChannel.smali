.class final Landroid/app/assist/AssistStructure$SendChannel;
.super Landroid/os/Binder;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SendChannel"
.end annotation


# instance fields
.field volatile greylist-max-o mAssistStructure:Landroid/app/assist/AssistStructure;


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/assist/AssistStructure;)V
    .registers 2
    .param p1, "as"    # Landroid/app/assist/AssistStructure;

    .line 162
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 163
    iput-object p1, p0, Landroid/app/assist/AssistStructure$SendChannel;->mAssistStructure:Landroid/app/assist/AssistStructure;

    .line 164
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

    .line 168
    const/4 v0, 0x2

    if-ne p1, v0, :cond_41

    .line 169
    iget-object v0, p0, Landroid/app/assist/AssistStructure$SendChannel;->mAssistStructure:Landroid/app/assist/AssistStructure;

    .line 170
    .local v0, "as":Landroid/app/assist/AssistStructure;
    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 171
    return v1

    .line 174
    :cond_9
    const-string v2, "android.app.AssistStructure"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 178
    .local v2, "token":Landroid/os/IBinder;
    if-eqz v2, :cond_38

    .line 180
    instance-of v3, v2, Landroid/app/assist/AssistStructure$ParcelTransferWriter;

    if-eqz v3, :cond_1f

    .line 181
    move-object v3, v2

    check-cast v3, Landroid/app/assist/AssistStructure$ParcelTransferWriter;

    .line 182
    .local v3, "xfer":Landroid/app/assist/AssistStructure$ParcelTransferWriter;
    invoke-virtual {v3, v0, p3}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V

    .line 183
    return v1

    .line 185
    .end local v3    # "xfer":Landroid/app/assist/AssistStructure$ParcelTransferWriter;
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller supplied bad token type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AssistStructure"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v1

    .line 190
    :cond_38
    new-instance v3, Landroid/app/assist/AssistStructure$ParcelTransferWriter;

    invoke-direct {v3, v0, p3}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;-><init>(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V

    .line 191
    .restart local v3    # "xfer":Landroid/app/assist/AssistStructure$ParcelTransferWriter;
    invoke-virtual {v3, v0, p3}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V

    .line 193
    return v1

    .line 195
    .end local v0    # "as":Landroid/app/assist/AssistStructure;
    .end local v2    # "token":Landroid/os/IBinder;
    .end local v3    # "xfer":Landroid/app/assist/AssistStructure$ParcelTransferWriter;
    :cond_41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method
