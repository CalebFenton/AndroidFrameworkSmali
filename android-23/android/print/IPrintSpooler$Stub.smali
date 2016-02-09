.class public abstract Landroid/print/IPrintSpooler$Stub;
.super Landroid/os/Binder;
.source "IPrintSpooler.java"

# interfaces
.implements Landroid/print/IPrintSpooler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpooler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintSpooler"

.field static final TRANSACTION_createPrintJob:I = 0x4

.field static final TRANSACTION_getPrintJobInfo:I = 0x3

.field static final TRANSACTION_getPrintJobInfos:I = 0x2

.field static final TRANSACTION_removeObsoletePrintJobs:I = 0x1

.field static final TRANSACTION_setClient:I = 0x8

.field static final TRANSACTION_setPrintJobCancelling:I = 0x9

.field static final TRANSACTION_setPrintJobState:I = 0x5

.field static final TRANSACTION_setPrintJobTag:I = 0x6

.field static final TRANSACTION_writePrintJobData:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 22
    const-string/jumbo v0, "android.print.IPrintSpooler"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintSpooler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpooler;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    if-nez p0, :cond_0

    #@3
    .line 31
    return-object v1

    #@4
    .line 33
    :cond_0
    const-string/jumbo v1, "android.print.IPrintSpooler"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/print/IPrintSpooler;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 35
    check-cast v0, Landroid/print/IPrintSpooler;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/print/IPrintSpooler$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/print/IPrintSpooler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 195
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v3, "android.print.IPrintSpooler"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 50
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 54
    :sswitch_1
    const-string/jumbo v3, "android.print.IPrintSpooler"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/print/IPrintSpooler$Stub;->removeObsoletePrintJobs()V

    #@1d
    .line 56
    const/4 v3, 0x1

    #@1e
    return v3

    #@1f
    .line 60
    :sswitch_2
    const-string/jumbo v3, "android.print.IPrintSpooler"

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    #@2e
    move-result-object v4

    #@2f
    .line 64
    .local v4, "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_0

    #@35
    .line 65
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37
    move-object/from16 v0, p2

    #@39
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c
    move-result-object v5

    #@3d
    check-cast v5, Landroid/content/ComponentName;

    #@3f
    .line 71
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v6

    #@43
    .line 73
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v7

    #@47
    .line 75
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v8

    #@4b
    .local v8, "_arg4":I
    move-object/from16 v3, p0

    #@4d
    .line 76
    invoke-virtual/range {v3 .. v8}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V

    #@50
    .line 77
    const/4 v3, 0x1

    #@51
    return v3

    #@52
    .line 68
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    :cond_0
    const/4 v5, 0x0

    #@53
    .local v5, "_arg1":Landroid/content/ComponentName;
    goto :goto_0

    #@54
    .line 81
    .end local v4    # "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    .end local v5    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v3, "android.print.IPrintSpooler"

    #@57
    move-object/from16 v0, p2

    #@59
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_1

    #@62
    .line 84
    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@64
    move-object/from16 v0, p2

    #@66
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@69
    move-result-object v10

    #@6a
    check-cast v10, Landroid/print/PrintJobId;

    #@6c
    .line 90
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6f
    move-result-object v3

    #@70
    invoke-static {v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    #@73
    move-result-object v18

    #@74
    .line 92
    .local v18, "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v6

    #@78
    .line 94
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v7

    #@7c
    .line 95
    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    #@7e
    move-object/from16 v1, v18

    #@80
    invoke-virtual {v0, v10, v1, v6, v7}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V

    #@83
    .line 96
    const/4 v3, 0x1

    #@84
    return v3

    #@85
    .line 87
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v18    # "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    :cond_1
    const/4 v10, 0x0

    #@86
    .local v10, "_arg0":Landroid/print/PrintJobId;
    goto :goto_1

    #@87
    .line 100
    .end local v10    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_4
    const-string/jumbo v3, "android.print.IPrintSpooler"

    #@8a
    move-object/from16 v0, p2

    #@8c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8f
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92
    move-result v3

    #@93
    if-eqz v3, :cond_2

    #@95
    .line 103
    sget-object v3, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@97
    move-object/from16 v0, p2

    #@99
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9c
    move-result-object v17

    #@9d
    check-cast v17, Landroid/print/PrintJobInfo;

    #@9f
    .line 108
    :goto_2
    move-object/from16 v0, p0

    #@a1
    move-object/from16 v1, v17

    #@a3
    invoke-virtual {v0, v1}, Landroid/print/IPrintSpooler$Stub;->createPrintJob(Landroid/print/PrintJobInfo;)V

    #@a6
    .line 109
    const/4 v3, 0x1

    #@a7
    return v3

    #@a8
    .line 106
    :cond_2
    const/16 v17, 0x0

    #@aa
    .local v17, "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_2

    #@ab
    .line 113
    .end local v17    # "_arg0":Landroid/print/PrintJobInfo;
    :sswitch_5
    const-string/jumbo v3, "android.print.IPrintSpooler"

    #@ae
    move-object/from16 v0, p2

    #@b0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b3
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b6
    move-result v3

    #@b7
    if-eqz v3, :cond_3

    #@b9
    .line 116
    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bb
    move-object/from16 v0, p2

    #@bd
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c0
    move-result-object v10

    #@c1
    check-cast v10, Landroid/print/PrintJobId;

    #@c3
    .line 122
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c6
    move-result v11

    #@c7
    .line 124
    .local v11, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ca
    move-result-object v12

    #@cb
    .line 126
    .local v12, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ce
    move-result-object v3

    #@cf
    invoke-static {v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    #@d2
    move-result-object v13

    #@d3
    .line 128
    .local v13, "_arg3":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d6
    move-result v8

    #@d7
    .restart local v8    # "_arg4":I
    move-object/from16 v9, p0

    #@d9
    move v14, v8

    #@da
    .line 129
    invoke-virtual/range {v9 .. v14}, Landroid/print/IPrintSpooler$Stub;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    #@dd
    .line 130
    const/4 v3, 0x1

    #@de
    return v3

    #@df
    .line 119
    .end local v8    # "_arg4":I
    .end local v11    # "_arg1":I
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg3":Landroid/print/IPrintSpoolerCallbacks;
    :cond_3
    const/4 v10, 0x0

    #@e0
    .restart local v10    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_3

    #@e1
    .line 134
    .end local v10    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_6
    const-string/jumbo v3, "android.print.IPrintSpooler"

    #@e4
    move-object/from16 v0, p2

    #@e6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e9
    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ec
    move-result v3

    #@ed
    if-eqz v3, :cond_4

    #@ef
    .line 137
    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f6
    move-result-object v10

    #@f7
    check-cast v10, Landroid/print/PrintJobId;

    #@f9
    .line 143
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fc
    move-result-object v20

    #@fd
    .line 145
    .local v20, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@100
    move-result-object v3

    #@101
    invoke-static {v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    #@104
    move-result-object v22

    #@105
    .line 147
    .local v22, "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@108
    move-result v7

    #@109
    .line 148
    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    #@10b
    move-object/from16 v1, v20

    #@10d
    move-object/from16 v2, v22

    #@10f
    invoke-virtual {v0, v10, v1, v2, v7}, Landroid/print/IPrintSpooler$Stub;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    #@112
    .line 149
    const/4 v3, 0x1

    #@113
    return v3

    #@114
    .line 140
    .end local v7    # "_arg3":I
    .end local v20    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    :cond_4
    const/4 v10, 0x0

    #@115
    .restart local v10    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_4

    #@116
    .line 153
    .end local v10    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_7
    const-string/jumbo v3, "android.print.IPrintSpooler"

    #@119
    move-object/from16 v0, p2

    #@11b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11e
    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@121
    move-result v3

    #@122
    if-eqz v3, :cond_5

    #@124
    .line 156
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@126
    move-object/from16 v0, p2

    #@128
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12b
    move-result-object v15

    #@12c
    check-cast v15, Landroid/os/ParcelFileDescriptor;

    #@12e
    .line 162
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@131
    move-result v3

    #@132
    if-eqz v3, :cond_6

    #@134
    .line 163
    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@136
    move-object/from16 v0, p2

    #@138
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13b
    move-result-object v19

    #@13c
    check-cast v19, Landroid/print/PrintJobId;

    #@13e
    .line 168
    :goto_6
    move-object/from16 v0, p0

    #@140
    move-object/from16 v1, v19

    #@142
    invoke-virtual {v0, v15, v1}, Landroid/print/IPrintSpooler$Stub;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V

    #@145
    .line 169
    const/4 v3, 0x1

    #@146
    return v3

    #@147
    .line 159
    :cond_5
    const/4 v15, 0x0

    #@148
    .local v15, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_5

    #@149
    .line 166
    .end local v15    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_6
    const/16 v19, 0x0

    #@14b
    .local v19, "_arg1":Landroid/print/PrintJobId;
    goto :goto_6

    #@14c
    .line 173
    .end local v19    # "_arg1":Landroid/print/PrintJobId;
    :sswitch_8
    const-string/jumbo v3, "android.print.IPrintSpooler"

    #@14f
    move-object/from16 v0, p2

    #@151
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@154
    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@157
    move-result-object v3

    #@158
    invoke-static {v3}, Landroid/print/IPrintSpoolerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerClient;

    #@15b
    move-result-object v16

    #@15c
    .line 176
    .local v16, "_arg0":Landroid/print/IPrintSpoolerClient;
    move-object/from16 v0, p0

    #@15e
    move-object/from16 v1, v16

    #@160
    invoke-virtual {v0, v1}, Landroid/print/IPrintSpooler$Stub;->setClient(Landroid/print/IPrintSpoolerClient;)V

    #@163
    .line 177
    const/4 v3, 0x1

    #@164
    return v3

    #@165
    .line 181
    .end local v16    # "_arg0":Landroid/print/IPrintSpoolerClient;
    :sswitch_9
    const-string/jumbo v3, "android.print.IPrintSpooler"

    #@168
    move-object/from16 v0, p2

    #@16a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16d
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@170
    move-result v3

    #@171
    if-eqz v3, :cond_7

    #@173
    .line 184
    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@175
    move-object/from16 v0, p2

    #@177
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17a
    move-result-object v10

    #@17b
    check-cast v10, Landroid/print/PrintJobId;

    #@17d
    .line 190
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@180
    move-result v3

    #@181
    if-eqz v3, :cond_8

    #@183
    const/16 v21, 0x1

    #@185
    .line 191
    .local v21, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    #@187
    move/from16 v1, v21

    #@189
    invoke-virtual {v0, v10, v1}, Landroid/print/IPrintSpooler$Stub;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    #@18c
    .line 192
    const/4 v3, 0x1

    #@18d
    return v3

    #@18e
    .line 187
    .end local v21    # "_arg1":Z
    :cond_7
    const/4 v10, 0x0

    #@18f
    .restart local v10    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_7

    #@190
    .line 190
    .end local v10    # "_arg0":Landroid/print/PrintJobId;
    :cond_8
    const/16 v21, 0x0

    #@192
    .restart local v21    # "_arg1":Z
    goto :goto_8

    #@193
    .line 45
    nop

    #@194
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
