.class public abstract Landroid/printservice/IPrintServiceClient$Stub;
.super Landroid/os/Binder;
.source "IPrintServiceClient.java"

# interfaces
.implements Landroid/printservice/IPrintServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.printservice.IPrintServiceClient"

.field static final TRANSACTION_getPrintJobInfo:I = 0x2

.field static final TRANSACTION_getPrintJobInfos:I = 0x1

.field static final TRANSACTION_onPrintersAdded:I = 0x6

.field static final TRANSACTION_onPrintersRemoved:I = 0x7

.field static final TRANSACTION_setPrintJobState:I = 0x3

.field static final TRANSACTION_setPrintJobTag:I = 0x4

.field static final TRANSACTION_writePrintJobData:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.printservice.IPrintServiceClient"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/printservice/IPrintServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintServiceClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.printservice.IPrintServiceClient"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/printservice/IPrintServiceClient;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/printservice/IPrintServiceClient;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/printservice/IPrintServiceClient$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/printservice/IPrintServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v10

    #@7
    return v10

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v10, "android.printservice.IPrintServiceClient"

    #@b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 48
    const/4 v10, 0x1

    #@f
    return v10

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v10, "android.printservice.IPrintServiceClient"

    #@13
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p0}, Landroid/printservice/IPrintServiceClient$Stub;->getPrintJobInfos()Ljava/util/List;

    #@19
    move-result-object v8

    #@1a
    .line 54
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d
    .line 55
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@20
    .line 56
    const/4 v10, 0x1

    #@21
    return v10

    #@22
    .line 60
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :sswitch_2
    const-string/jumbo v10, "android.printservice.IPrintServiceClient"

    #@25
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v10

    #@2c
    if-eqz v10, :cond_0

    #@2e
    .line 63
    sget-object v10, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/print/PrintJobId;

    #@36
    .line 68
    :goto_0
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintServiceClient$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;

    #@39
    move-result-object v7

    #@3a
    .line 69
    .local v7, "_result":Landroid/print/PrintJobInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d
    .line 70
    if-eqz v7, :cond_1

    #@3f
    .line 71
    const/4 v10, 0x1

    #@40
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 72
    const/4 v10, 0x1

    #@44
    invoke-virtual {v7, p3, v10}, Landroid/print/PrintJobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@47
    .line 77
    :goto_1
    const/4 v10, 0x1

    #@48
    return v10

    #@49
    .line 66
    .end local v7    # "_result":Landroid/print/PrintJobInfo;
    :cond_0
    const/4 v2, 0x0

    #@4a
    .local v2, "_arg0":Landroid/print/PrintJobId;
    goto :goto_0

    #@4b
    .line 75
    .end local v2    # "_arg0":Landroid/print/PrintJobId;
    .restart local v7    # "_result":Landroid/print/PrintJobInfo;
    :cond_1
    const/4 v10, 0x0

    #@4c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    goto :goto_1

    #@50
    .line 81
    .end local v7    # "_result":Landroid/print/PrintJobInfo;
    :sswitch_3
    const-string/jumbo v10, "android.printservice.IPrintServiceClient"

    #@53
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56
    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v10

    #@5a
    if-eqz v10, :cond_2

    #@5c
    .line 84
    sget-object v10, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5e
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@61
    move-result-object v2

    #@62
    check-cast v2, Landroid/print/PrintJobId;

    #@64
    .line 90
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v3

    #@68
    .line 92
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    .line 93
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v6}, Landroid/printservice/IPrintServiceClient$Stub;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    #@6f
    move-result v9

    #@70
    .line 94
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@73
    .line 95
    if-eqz v9, :cond_3

    #@75
    const/4 v10, 0x1

    #@76
    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@79
    .line 96
    const/4 v10, 0x1

    #@7a
    return v10

    #@7b
    .line 87
    .end local v3    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v9    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    #@7c
    .restart local v2    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_2

    #@7d
    .line 95
    .end local v2    # "_arg0":Landroid/print/PrintJobId;
    .restart local v3    # "_arg1":I
    .restart local v6    # "_arg2":Ljava/lang/String;
    .restart local v9    # "_result":Z
    :cond_3
    const/4 v10, 0x0

    #@7e
    goto :goto_3

    #@7f
    .line 100
    .end local v3    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v9    # "_result":Z
    :sswitch_4
    const-string/jumbo v10, "android.printservice.IPrintServiceClient"

    #@82
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@88
    move-result v10

    #@89
    if-eqz v10, :cond_4

    #@8b
    .line 103
    sget-object v10, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8d
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@90
    move-result-object v2

    #@91
    check-cast v2, Landroid/print/PrintJobId;

    #@93
    .line 109
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@96
    move-result-object v5

    #@97
    .line 110
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v5}, Landroid/printservice/IPrintServiceClient$Stub;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z

    #@9a
    move-result v9

    #@9b
    .line 111
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9e
    .line 112
    if-eqz v9, :cond_5

    #@a0
    const/4 v10, 0x1

    #@a1
    :goto_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@a4
    .line 113
    const/4 v10, 0x1

    #@a5
    return v10

    #@a6
    .line 106
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Z
    :cond_4
    const/4 v2, 0x0

    #@a7
    .restart local v2    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_4

    #@a8
    .line 112
    .end local v2    # "_arg0":Landroid/print/PrintJobId;
    .restart local v5    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_result":Z
    :cond_5
    const/4 v10, 0x0

    #@a9
    goto :goto_5

    #@aa
    .line 117
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Z
    :sswitch_5
    const-string/jumbo v10, "android.printservice.IPrintServiceClient"

    #@ad
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b0
    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b3
    move-result v10

    #@b4
    if-eqz v10, :cond_6

    #@b6
    .line 120
    sget-object v10, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b8
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bb
    move-result-object v1

    #@bc
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    #@be
    .line 126
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c1
    move-result v10

    #@c2
    if-eqz v10, :cond_7

    #@c4
    .line 127
    sget-object v10, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c6
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c9
    move-result-object v4

    #@ca
    check-cast v4, Landroid/print/PrintJobId;

    #@cc
    .line 132
    :goto_7
    invoke-virtual {p0, v1, v4}, Landroid/printservice/IPrintServiceClient$Stub;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V

    #@cf
    .line 133
    const/4 v10, 0x1

    #@d0
    return v10

    #@d1
    .line 123
    :cond_6
    const/4 v1, 0x0

    #@d2
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    #@d3
    .line 130
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_7
    const/4 v4, 0x0

    #@d4
    .local v4, "_arg1":Landroid/print/PrintJobId;
    goto :goto_7

    #@d5
    .line 137
    .end local v4    # "_arg1":Landroid/print/PrintJobId;
    :sswitch_6
    const-string/jumbo v10, "android.printservice.IPrintServiceClient"

    #@d8
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db
    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@de
    move-result v10

    #@df
    if-eqz v10, :cond_8

    #@e1
    .line 140
    sget-object v10, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@e3
    invoke-interface {v10, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e6
    move-result-object v0

    #@e7
    check-cast v0, Landroid/content/pm/ParceledListSlice;

    #@e9
    .line 145
    :goto_8
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintServiceClient$Stub;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V

    #@ec
    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ef
    .line 147
    const/4 v10, 0x1

    #@f0
    return v10

    #@f1
    .line 143
    :cond_8
    const/4 v0, 0x0

    #@f2
    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_8

    #@f3
    .line 151
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_7
    const-string/jumbo v10, "android.printservice.IPrintServiceClient"

    #@f6
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f9
    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@fc
    move-result v10

    #@fd
    if-eqz v10, :cond_9

    #@ff
    .line 154
    sget-object v10, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@101
    invoke-interface {v10, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@104
    move-result-object v0

    #@105
    check-cast v0, Landroid/content/pm/ParceledListSlice;

    #@107
    .line 159
    :goto_9
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintServiceClient$Stub;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V

    #@10a
    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@10d
    .line 161
    const/4 v10, 0x1

    #@10e
    return v10

    #@10f
    .line 157
    :cond_9
    const/4 v0, 0x0

    #@110
    .restart local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_9

    #@111
    .line 43
    nop

    #@112
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
