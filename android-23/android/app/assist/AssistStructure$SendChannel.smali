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
.field volatile mAssistStructure:Landroid/app/assist/AssistStructure;


# direct methods
.method constructor <init>(Landroid/app/assist/AssistStructure;)V
    .locals 0
    .param p1, "as"    # Landroid/app/assist/AssistStructure;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 61
    iput-object p1, p0, Landroid/app/assist/AssistStructure$SendChannel;->mAssistStructure:Landroid/app/assist/AssistStructure;

    #@5
    .line 60
    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x1

    #@1
    .line 66
    const/4 v3, 0x2

    #@2
    if-ne p1, v3, :cond_3

    #@4
    .line 67
    iget-object v0, p0, Landroid/app/assist/AssistStructure$SendChannel;->mAssistStructure:Landroid/app/assist/AssistStructure;

    #@6
    .line 68
    .local v0, "as":Landroid/app/assist/AssistStructure;
    if-nez v0, :cond_0

    #@8
    .line 69
    return v6

    #@9
    .line 72
    :cond_0
    const-string/jumbo v3, "android.app.AssistStructure"

    #@c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f
    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@12
    move-result-object v1

    #@13
    .line 76
    .local v1, "token":Landroid/os/IBinder;
    if-eqz v1, :cond_2

    #@15
    .line 78
    instance-of v3, v1, Landroid/app/assist/AssistStructure$ParcelTransferWriter;

    #@17
    if-eqz v3, :cond_1

    #@19
    move-object v2, v1

    #@1a
    .line 79
    check-cast v2, Landroid/app/assist/AssistStructure$ParcelTransferWriter;

    #@1c
    .line 80
    .local v2, "xfer":Landroid/app/assist/AssistStructure$ParcelTransferWriter;
    invoke-virtual {v2, v0, p3}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V

    #@1f
    .line 81
    return v6

    #@20
    .line 83
    .end local v2    # "xfer":Landroid/app/assist/AssistStructure$ParcelTransferWriter;
    :cond_1
    const-string/jumbo v3, "AssistStructure"

    #@23
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "Caller supplied bad token type: "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 85
    return v6

    #@3b
    .line 88
    :cond_2
    new-instance v2, Landroid/app/assist/AssistStructure$ParcelTransferWriter;

    #@3d
    invoke-direct {v2, v0, p3}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;-><init>(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V

    #@40
    .line 89
    .restart local v2    # "xfer":Landroid/app/assist/AssistStructure$ParcelTransferWriter;
    invoke-virtual {v2, v0, p3}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V

    #@43
    .line 91
    return v6

    #@44
    .line 93
    .end local v0    # "as":Landroid/app/assist/AssistStructure;
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "xfer":Landroid/app/assist/AssistStructure$ParcelTransferWriter;
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@47
    move-result v3

    #@48
    return v3
.end method
