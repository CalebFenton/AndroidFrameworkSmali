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

.field static final TRANSACTION_clearCustomPrinterIconCache:I = 0xb

.field static final TRANSACTION_createPrintJob:I = 0x4

.field static final TRANSACTION_getCustomPrinterIcon:I = 0xa

.field static final TRANSACTION_getPrintJobInfo:I = 0x3

.field static final TRANSACTION_getPrintJobInfos:I = 0x2

.field static final TRANSACTION_onCustomPrinterIconLoaded:I = 0x9

.field static final TRANSACTION_pruneApprovedPrintServices:I = 0x10

.field static final TRANSACTION_removeObsoletePrintJobs:I = 0x1

.field static final TRANSACTION_setClient:I = 0xe

.field static final TRANSACTION_setPrintJobCancelling:I = 0xf

.field static final TRANSACTION_setPrintJobState:I = 0x5

.field static final TRANSACTION_setPrintJobTag:I = 0xc

.field static final TRANSACTION_setProgress:I = 0x6

.field static final TRANSACTION_setStatus:I = 0x7

.field static final TRANSACTION_setStatusRes:I = 0x8

.field static final TRANSACTION_writePrintJobData:I = 0xd


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
    .locals 30
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
    .line 311
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 50
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 54
    :sswitch_1
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/print/IPrintSpooler$Stub;->removeObsoletePrintJobs()V

    #@1d
    .line 56
    const/4 v4, 0x1

    #@1e
    return v4

    #@1f
    .line 60
    :sswitch_2
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    #@2e
    move-result-object v5

    #@2f
    .line 64
    .local v5, "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_0

    #@35
    .line 65
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37
    move-object/from16 v0, p2

    #@39
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c
    move-result-object v6

    #@3d
    check-cast v6, Landroid/content/ComponentName;

    #@3f
    .line 71
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v7

    #@43
    .line 73
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v8

    #@47
    .line 75
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v9

    #@4b
    .local v9, "_arg4":I
    move-object/from16 v4, p0

    #@4d
    .line 76
    invoke-virtual/range {v4 .. v9}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V

    #@50
    .line 77
    const/4 v4, 0x1

    #@51
    return v4

    #@52
    .line 68
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :cond_0
    const/4 v6, 0x0

    #@53
    .local v6, "_arg1":Landroid/content/ComponentName;
    goto :goto_0

    #@54
    .line 81
    .end local v5    # "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@57
    move-object/from16 v0, p2

    #@59
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_1

    #@62
    .line 84
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@64
    move-object/from16 v0, p2

    #@66
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@69
    move-result-object v11

    #@6a
    check-cast v11, Landroid/print/PrintJobId;

    #@6c
    .line 90
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6f
    move-result-object v4

    #@70
    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    #@73
    move-result-object v23

    #@74
    .line 92
    .local v23, "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v7

    #@78
    .line 94
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v8

    #@7c
    .line 95
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@7e
    move-object/from16 v1, v23

    #@80
    invoke-virtual {v0, v11, v1, v7, v8}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V

    #@83
    .line 96
    const/4 v4, 0x1

    #@84
    return v4

    #@85
    .line 87
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v23    # "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    :cond_1
    const/4 v11, 0x0

    #@86
    .local v11, "_arg0":Landroid/print/PrintJobId;
    goto :goto_1

    #@87
    .line 100
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_4
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@8a
    move-object/from16 v0, p2

    #@8c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8f
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92
    move-result v4

    #@93
    if-eqz v4, :cond_2

    #@95
    .line 103
    sget-object v4, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@97
    move-object/from16 v0, p2

    #@99
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9c
    move-result-object v18

    #@9d
    check-cast v18, Landroid/print/PrintJobInfo;

    #@9f
    .line 108
    :goto_2
    move-object/from16 v0, p0

    #@a1
    move-object/from16 v1, v18

    #@a3
    invoke-virtual {v0, v1}, Landroid/print/IPrintSpooler$Stub;->createPrintJob(Landroid/print/PrintJobInfo;)V

    #@a6
    .line 109
    const/4 v4, 0x1

    #@a7
    return v4

    #@a8
    .line 106
    :cond_2
    const/16 v18, 0x0

    #@aa
    .local v18, "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_2

    #@ab
    .line 113
    .end local v18    # "_arg0":Landroid/print/PrintJobInfo;
    :sswitch_5
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@ae
    move-object/from16 v0, p2

    #@b0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b3
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b6
    move-result v4

    #@b7
    if-eqz v4, :cond_3

    #@b9
    .line 116
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bb
    move-object/from16 v0, p2

    #@bd
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c0
    move-result-object v11

    #@c1
    check-cast v11, Landroid/print/PrintJobId;

    #@c3
    .line 122
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c6
    move-result v12

    #@c7
    .line 124
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ca
    move-result-object v13

    #@cb
    .line 126
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ce
    move-result-object v4

    #@cf
    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    #@d2
    move-result-object v14

    #@d3
    .line 128
    .local v14, "_arg3":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d6
    move-result v9

    #@d7
    .restart local v9    # "_arg4":I
    move-object/from16 v10, p0

    #@d9
    move v15, v9

    #@da
    .line 129
    invoke-virtual/range {v10 .. v15}, Landroid/print/IPrintSpooler$Stub;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    #@dd
    .line 130
    const/4 v4, 0x1

    #@de
    return v4

    #@df
    .line 119
    .end local v9    # "_arg4":I
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":Landroid/print/IPrintSpoolerCallbacks;
    :cond_3
    const/4 v11, 0x0

    #@e0
    .restart local v11    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_3

    #@e1
    .line 134
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_6
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@e4
    move-object/from16 v0, p2

    #@e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e9
    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ec
    move-result v4

    #@ed
    if-eqz v4, :cond_4

    #@ef
    .line 137
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f6
    move-result-object v11

    #@f7
    check-cast v11, Landroid/print/PrintJobId;

    #@f9
    .line 143
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@fc
    move-result v21

    #@fd
    .line 144
    .local v21, "_arg1":F
    move-object/from16 v0, p0

    #@ff
    move/from16 v1, v21

    #@101
    invoke-virtual {v0, v11, v1}, Landroid/print/IPrintSpooler$Stub;->setProgress(Landroid/print/PrintJobId;F)V

    #@104
    .line 145
    const/4 v4, 0x1

    #@105
    return v4

    #@106
    .line 140
    .end local v21    # "_arg1":F
    :cond_4
    const/4 v11, 0x0

    #@107
    .restart local v11    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_4

    #@108
    .line 149
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_7
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@10b
    move-object/from16 v0, p2

    #@10d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@110
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@113
    move-result v4

    #@114
    if-eqz v4, :cond_5

    #@116
    .line 152
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@118
    move-object/from16 v0, p2

    #@11a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11d
    move-result-object v11

    #@11e
    check-cast v11, Landroid/print/PrintJobId;

    #@120
    .line 158
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@123
    move-result v4

    #@124
    if-eqz v4, :cond_6

    #@126
    .line 159
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@128
    move-object/from16 v0, p2

    #@12a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12d
    move-result-object v25

    #@12e
    check-cast v25, Ljava/lang/CharSequence;

    #@130
    .line 164
    :goto_6
    move-object/from16 v0, p0

    #@132
    move-object/from16 v1, v25

    #@134
    invoke-virtual {v0, v11, v1}, Landroid/print/IPrintSpooler$Stub;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V

    #@137
    .line 165
    const/4 v4, 0x1

    #@138
    return v4

    #@139
    .line 155
    :cond_5
    const/4 v11, 0x0

    #@13a
    .restart local v11    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_5

    #@13b
    .line 162
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    :cond_6
    const/16 v25, 0x0

    #@13d
    .local v25, "_arg1":Ljava/lang/CharSequence;
    goto :goto_6

    #@13e
    .line 169
    .end local v25    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_8
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@141
    move-object/from16 v0, p2

    #@143
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@146
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@149
    move-result v4

    #@14a
    if-eqz v4, :cond_7

    #@14c
    .line 172
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14e
    move-object/from16 v0, p2

    #@150
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@153
    move-result-object v11

    #@154
    check-cast v11, Landroid/print/PrintJobId;

    #@156
    .line 178
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@159
    move-result v12

    #@15a
    .line 180
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15d
    move-result v4

    #@15e
    if-eqz v4, :cond_8

    #@160
    .line 181
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@162
    move-object/from16 v0, p2

    #@164
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@167
    move-result-object v29

    #@168
    check-cast v29, Ljava/lang/CharSequence;

    #@16a
    .line 186
    :goto_8
    move-object/from16 v0, p0

    #@16c
    move-object/from16 v1, v29

    #@16e
    invoke-virtual {v0, v11, v12, v1}, Landroid/print/IPrintSpooler$Stub;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V

    #@171
    .line 187
    const/4 v4, 0x1

    #@172
    return v4

    #@173
    .line 175
    .end local v12    # "_arg1":I
    :cond_7
    const/4 v11, 0x0

    #@174
    .restart local v11    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_7

    #@175
    .line 184
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    .restart local v12    # "_arg1":I
    :cond_8
    const/16 v29, 0x0

    #@177
    .local v29, "_arg2":Ljava/lang/CharSequence;
    goto :goto_8

    #@178
    .line 191
    .end local v12    # "_arg1":I
    .end local v29    # "_arg2":Ljava/lang/CharSequence;
    :sswitch_9
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@17b
    move-object/from16 v0, p2

    #@17d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@180
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@183
    move-result v4

    #@184
    if-eqz v4, :cond_9

    #@186
    .line 194
    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@188
    move-object/from16 v0, p2

    #@18a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18d
    move-result-object v19

    #@18e
    check-cast v19, Landroid/print/PrinterId;

    #@190
    .line 200
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@193
    move-result v4

    #@194
    if-eqz v4, :cond_a

    #@196
    .line 201
    sget-object v4, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@198
    move-object/from16 v0, p2

    #@19a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19d
    move-result-object v22

    #@19e
    check-cast v22, Landroid/graphics/drawable/Icon;

    #@1a0
    .line 207
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a3
    move-result-object v4

    #@1a4
    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    #@1a7
    move-result-object v28

    #@1a8
    .line 209
    .local v28, "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ab
    move-result v8

    #@1ac
    .line 210
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@1ae
    move-object/from16 v1, v19

    #@1b0
    move-object/from16 v2, v22

    #@1b2
    move-object/from16 v3, v28

    #@1b4
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/print/IPrintSpooler$Stub;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;Landroid/print/IPrintSpoolerCallbacks;I)V

    #@1b7
    .line 211
    const/4 v4, 0x1

    #@1b8
    return v4

    #@1b9
    .line 197
    .end local v8    # "_arg3":I
    .end local v28    # "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    :cond_9
    const/16 v19, 0x0

    #@1bb
    .local v19, "_arg0":Landroid/print/PrinterId;
    goto :goto_9

    #@1bc
    .line 204
    .end local v19    # "_arg0":Landroid/print/PrinterId;
    :cond_a
    const/16 v22, 0x0

    #@1be
    .local v22, "_arg1":Landroid/graphics/drawable/Icon;
    goto :goto_a

    #@1bf
    .line 215
    .end local v22    # "_arg1":Landroid/graphics/drawable/Icon;
    :sswitch_a
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@1c2
    move-object/from16 v0, p2

    #@1c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c7
    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ca
    move-result v4

    #@1cb
    if-eqz v4, :cond_b

    #@1cd
    .line 218
    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1cf
    move-object/from16 v0, p2

    #@1d1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d4
    move-result-object v19

    #@1d5
    check-cast v19, Landroid/print/PrinterId;

    #@1d7
    .line 224
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1da
    move-result-object v4

    #@1db
    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    #@1de
    move-result-object v23

    #@1df
    .line 226
    .restart local v23    # "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e2
    move-result v7

    #@1e3
    .line 227
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@1e5
    move-object/from16 v1, v19

    #@1e7
    move-object/from16 v2, v23

    #@1e9
    invoke-virtual {v0, v1, v2, v7}, Landroid/print/IPrintSpooler$Stub;->getCustomPrinterIcon(Landroid/print/PrinterId;Landroid/print/IPrintSpoolerCallbacks;I)V

    #@1ec
    .line 228
    const/4 v4, 0x1

    #@1ed
    return v4

    #@1ee
    .line 221
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    :cond_b
    const/16 v19, 0x0

    #@1f0
    .restart local v19    # "_arg0":Landroid/print/PrinterId;
    goto :goto_b

    #@1f1
    .line 232
    .end local v19    # "_arg0":Landroid/print/PrinterId;
    :sswitch_b
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@1f4
    move-object/from16 v0, p2

    #@1f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f9
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1fc
    move-result-object v4

    #@1fd
    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    #@200
    move-result-object v5

    #@201
    .line 236
    .restart local v5    # "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@204
    move-result v12

    #@205
    .line 237
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@207
    invoke-virtual {v0, v5, v12}, Landroid/print/IPrintSpooler$Stub;->clearCustomPrinterIconCache(Landroid/print/IPrintSpoolerCallbacks;I)V

    #@20a
    .line 238
    const/4 v4, 0x1

    #@20b
    return v4

    #@20c
    .line 242
    .end local v5    # "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    .end local v12    # "_arg1":I
    :sswitch_c
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@20f
    move-object/from16 v0, p2

    #@211
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@214
    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@217
    move-result v4

    #@218
    if-eqz v4, :cond_c

    #@21a
    .line 245
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21c
    move-object/from16 v0, p2

    #@21e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@221
    move-result-object v11

    #@222
    check-cast v11, Landroid/print/PrintJobId;

    #@224
    .line 251
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@227
    move-result-object v26

    #@228
    .line 253
    .local v26, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22b
    move-result-object v4

    #@22c
    invoke-static {v4}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    #@22f
    move-result-object v28

    #@230
    .line 255
    .restart local v28    # "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@233
    move-result v8

    #@234
    .line 256
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@236
    move-object/from16 v1, v26

    #@238
    move-object/from16 v2, v28

    #@23a
    invoke-virtual {v0, v11, v1, v2, v8}, Landroid/print/IPrintSpooler$Stub;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    #@23d
    .line 257
    const/4 v4, 0x1

    #@23e
    return v4

    #@23f
    .line 248
    .end local v8    # "_arg3":I
    .end local v26    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    :cond_c
    const/4 v11, 0x0

    #@240
    .restart local v11    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_c

    #@241
    .line 261
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_d
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@244
    move-object/from16 v0, p2

    #@246
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@249
    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24c
    move-result v4

    #@24d
    if-eqz v4, :cond_d

    #@24f
    .line 264
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@251
    move-object/from16 v0, p2

    #@253
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@256
    move-result-object v16

    #@257
    check-cast v16, Landroid/os/ParcelFileDescriptor;

    #@259
    .line 270
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25c
    move-result v4

    #@25d
    if-eqz v4, :cond_e

    #@25f
    .line 271
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@261
    move-object/from16 v0, p2

    #@263
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@266
    move-result-object v24

    #@267
    check-cast v24, Landroid/print/PrintJobId;

    #@269
    .line 276
    :goto_e
    move-object/from16 v0, p0

    #@26b
    move-object/from16 v1, v16

    #@26d
    move-object/from16 v2, v24

    #@26f
    invoke-virtual {v0, v1, v2}, Landroid/print/IPrintSpooler$Stub;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V

    #@272
    .line 277
    const/4 v4, 0x1

    #@273
    return v4

    #@274
    .line 267
    :cond_d
    const/16 v16, 0x0

    #@276
    .local v16, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_d

    #@277
    .line 274
    .end local v16    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_e
    const/16 v24, 0x0

    #@279
    .local v24, "_arg1":Landroid/print/PrintJobId;
    goto :goto_e

    #@27a
    .line 281
    .end local v24    # "_arg1":Landroid/print/PrintJobId;
    :sswitch_e
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@27d
    move-object/from16 v0, p2

    #@27f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@282
    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@285
    move-result-object v4

    #@286
    invoke-static {v4}, Landroid/print/IPrintSpoolerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerClient;

    #@289
    move-result-object v17

    #@28a
    .line 284
    .local v17, "_arg0":Landroid/print/IPrintSpoolerClient;
    move-object/from16 v0, p0

    #@28c
    move-object/from16 v1, v17

    #@28e
    invoke-virtual {v0, v1}, Landroid/print/IPrintSpooler$Stub;->setClient(Landroid/print/IPrintSpoolerClient;)V

    #@291
    .line 285
    const/4 v4, 0x1

    #@292
    return v4

    #@293
    .line 289
    .end local v17    # "_arg0":Landroid/print/IPrintSpoolerClient;
    :sswitch_f
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@296
    move-object/from16 v0, p2

    #@298
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29b
    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29e
    move-result v4

    #@29f
    if-eqz v4, :cond_f

    #@2a1
    .line 292
    sget-object v4, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a3
    move-object/from16 v0, p2

    #@2a5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a8
    move-result-object v11

    #@2a9
    check-cast v11, Landroid/print/PrintJobId;

    #@2ab
    .line 298
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ae
    move-result v4

    #@2af
    if-eqz v4, :cond_10

    #@2b1
    const/16 v27, 0x1

    #@2b3
    .line 299
    .local v27, "_arg1":Z
    :goto_10
    move-object/from16 v0, p0

    #@2b5
    move/from16 v1, v27

    #@2b7
    invoke-virtual {v0, v11, v1}, Landroid/print/IPrintSpooler$Stub;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    #@2ba
    .line 300
    const/4 v4, 0x1

    #@2bb
    return v4

    #@2bc
    .line 295
    .end local v27    # "_arg1":Z
    :cond_f
    const/4 v11, 0x0

    #@2bd
    .restart local v11    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_f

    #@2be
    .line 298
    .end local v11    # "_arg0":Landroid/print/PrintJobId;
    :cond_10
    const/16 v27, 0x0

    #@2c0
    goto :goto_10

    #@2c1
    .line 304
    :sswitch_10
    const-string/jumbo v4, "android.print.IPrintSpooler"

    #@2c4
    move-object/from16 v0, p2

    #@2c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c9
    .line 306
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2cb
    move-object/from16 v0, p2

    #@2cd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@2d0
    move-result-object v20

    #@2d1
    .line 307
    .local v20, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    #@2d3
    move-object/from16 v1, v20

    #@2d5
    invoke-virtual {v0, v1}, Landroid/print/IPrintSpooler$Stub;->pruneApprovedPrintServices(Ljava/util/List;)V

    #@2d8
    .line 308
    const/4 v4, 0x1

    #@2d9
    return v4

    #@2da
    .line 45
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
