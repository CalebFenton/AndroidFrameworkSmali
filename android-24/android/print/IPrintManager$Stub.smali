.class public abstract Landroid/print/IPrintManager$Stub;
.super Landroid/os/Binder;
.source "IPrintManager.java"

# interfaces
.implements Landroid/print/IPrintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintManager"

.field static final TRANSACTION_addPrintJobStateChangeListener:I = 0x6

.field static final TRANSACTION_addPrintServiceRecommendationsChangeListener:I = 0xc

.field static final TRANSACTION_addPrintServicesChangeListener:I = 0x8

.field static final TRANSACTION_cancelPrintJob:I = 0x4

.field static final TRANSACTION_createPrinterDiscoverySession:I = 0xf

.field static final TRANSACTION_destroyPrinterDiscoverySession:I = 0x16

.field static final TRANSACTION_getCustomPrinterIcon:I = 0x14

.field static final TRANSACTION_getPrintJobInfo:I = 0x2

.field static final TRANSACTION_getPrintJobInfos:I = 0x1

.field static final TRANSACTION_getPrintServiceRecommendations:I = 0xe

.field static final TRANSACTION_getPrintServices:I = 0xa

.field static final TRANSACTION_print:I = 0x3

.field static final TRANSACTION_removePrintJobStateChangeListener:I = 0x7

.field static final TRANSACTION_removePrintServiceRecommendationsChangeListener:I = 0xd

.field static final TRANSACTION_removePrintServicesChangeListener:I = 0x9

.field static final TRANSACTION_restartPrintJob:I = 0x5

.field static final TRANSACTION_setPrintServiceEnabled:I = 0xb

.field static final TRANSACTION_startPrinterDiscovery:I = 0x10

.field static final TRANSACTION_startPrinterStateTracking:I = 0x13

.field static final TRANSACTION_stopPrinterDiscovery:I = 0x11

.field static final TRANSACTION_stopPrinterStateTracking:I = 0x15

.field static final TRANSACTION_validatePrinters:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.print.IPrintManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintManager;
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
    const-string/jumbo v1, "android.print.IPrintManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/print/IPrintManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/print/IPrintManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/print/IPrintManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/print/IPrintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 29
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
    .line 375
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v3, "android.print.IPrintManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v3, "android.print.IPrintManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v10

    #@1e
    .line 56
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v19

    #@22
    .line 57
    .local v19, "_arg1":I
    move-object/from16 v0, p0

    #@24
    move/from16 v1, v19

    #@26
    invoke-virtual {v0, v10, v1}, Landroid/print/IPrintManager$Stub;->getPrintJobInfos(II)Ljava/util/List;

    #@29
    move-result-object v26

    #@2a
    .line 58
    .local v26, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d
    .line 59
    move-object/from16 v0, p3

    #@2f
    move-object/from16 v1, v26

    #@31
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@34
    .line 60
    const/4 v3, 0x1

    #@35
    return v3

    #@36
    .line 64
    .end local v10    # "_arg0":I
    .end local v19    # "_arg1":I
    .end local v26    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :sswitch_2
    const-string/jumbo v3, "android.print.IPrintManager"

    #@39
    move-object/from16 v0, p2

    #@3b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e
    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_0

    #@44
    .line 67
    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@46
    move-object/from16 v0, p2

    #@48
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4b
    move-result-object v15

    #@4c
    check-cast v15, Landroid/print/PrintJobId;

    #@4e
    .line 73
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v19

    #@52
    .line 75
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v22

    #@56
    .line 76
    .local v22, "_arg2":I
    move-object/from16 v0, p0

    #@58
    move/from16 v1, v19

    #@5a
    move/from16 v2, v22

    #@5c
    invoke-virtual {v0, v15, v1, v2}, Landroid/print/IPrintManager$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;

    #@5f
    move-result-object v25

    #@60
    .line 77
    .local v25, "_result":Landroid/print/PrintJobInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@63
    .line 78
    if-eqz v25, :cond_1

    #@65
    .line 79
    const/4 v3, 0x1

    #@66
    move-object/from16 v0, p3

    #@68
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 80
    const/4 v3, 0x1

    #@6c
    move-object/from16 v0, v25

    #@6e
    move-object/from16 v1, p3

    #@70
    invoke-virtual {v0, v1, v3}, Landroid/print/PrintJobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@73
    .line 85
    :goto_1
    const/4 v3, 0x1

    #@74
    return v3

    #@75
    .line 70
    .end local v19    # "_arg1":I
    .end local v22    # "_arg2":I
    .end local v25    # "_result":Landroid/print/PrintJobInfo;
    :cond_0
    const/4 v15, 0x0

    #@76
    .local v15, "_arg0":Landroid/print/PrintJobId;
    goto :goto_0

    #@77
    .line 83
    .end local v15    # "_arg0":Landroid/print/PrintJobId;
    .restart local v19    # "_arg1":I
    .restart local v22    # "_arg2":I
    .restart local v25    # "_result":Landroid/print/PrintJobInfo;
    :cond_1
    const/4 v3, 0x0

    #@78
    move-object/from16 v0, p3

    #@7a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7d
    goto :goto_1

    #@7e
    .line 89
    .end local v19    # "_arg1":I
    .end local v22    # "_arg2":I
    .end local v25    # "_result":Landroid/print/PrintJobInfo;
    :sswitch_3
    const-string/jumbo v3, "android.print.IPrintManager"

    #@81
    move-object/from16 v0, p2

    #@83
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@89
    move-result-object v4

    #@8a
    .line 93
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8d
    move-result-object v3

    #@8e
    invoke-static {v3}, Landroid/print/IPrintDocumentAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapter;

    #@91
    move-result-object v5

    #@92
    .line 95
    .local v5, "_arg1":Landroid/print/IPrintDocumentAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v3

    #@96
    if-eqz v3, :cond_2

    #@98
    .line 96
    sget-object v3, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9a
    move-object/from16 v0, p2

    #@9c
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9f
    move-result-object v6

    #@a0
    check-cast v6, Landroid/print/PrintAttributes;

    #@a2
    .line 102
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a5
    move-result-object v7

    #@a6
    .line 104
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v8

    #@aa
    .line 106
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v9

    #@ae
    .local v9, "_arg5":I
    move-object/from16 v3, p0

    #@b0
    .line 107
    invoke-virtual/range {v3 .. v9}, Landroid/print/IPrintManager$Stub;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;

    #@b3
    move-result-object v24

    #@b4
    .line 108
    .local v24, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b7
    .line 109
    if-eqz v24, :cond_3

    #@b9
    .line 110
    const/4 v3, 0x1

    #@ba
    move-object/from16 v0, p3

    #@bc
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@bf
    .line 111
    const/4 v3, 0x1

    #@c0
    move-object/from16 v0, v24

    #@c2
    move-object/from16 v1, p3

    #@c4
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@c7
    .line 116
    :goto_3
    const/4 v3, 0x1

    #@c8
    return v3

    #@c9
    .line 99
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v24    # "_result":Landroid/os/Bundle;
    :cond_2
    const/4 v6, 0x0

    #@ca
    .local v6, "_arg2":Landroid/print/PrintAttributes;
    goto :goto_2

    #@cb
    .line 114
    .end local v6    # "_arg2":Landroid/print/PrintAttributes;
    .restart local v7    # "_arg3":Ljava/lang/String;
    .restart local v8    # "_arg4":I
    .restart local v9    # "_arg5":I
    .restart local v24    # "_result":Landroid/os/Bundle;
    :cond_3
    const/4 v3, 0x0

    #@cc
    move-object/from16 v0, p3

    #@ce
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@d1
    goto :goto_3

    #@d2
    .line 120
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/print/IPrintDocumentAdapter;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v24    # "_result":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v3, "android.print.IPrintManager"

    #@d5
    move-object/from16 v0, p2

    #@d7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@da
    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dd
    move-result v3

    #@de
    if-eqz v3, :cond_4

    #@e0
    .line 123
    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e2
    move-object/from16 v0, p2

    #@e4
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e7
    move-result-object v15

    #@e8
    check-cast v15, Landroid/print/PrintJobId;

    #@ea
    .line 129
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ed
    move-result v19

    #@ee
    .line 131
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f1
    move-result v22

    #@f2
    .line 132
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    #@f4
    move/from16 v1, v19

    #@f6
    move/from16 v2, v22

    #@f8
    invoke-virtual {v0, v15, v1, v2}, Landroid/print/IPrintManager$Stub;->cancelPrintJob(Landroid/print/PrintJobId;II)V

    #@fb
    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fe
    .line 134
    const/4 v3, 0x1

    #@ff
    return v3

    #@100
    .line 126
    .end local v19    # "_arg1":I
    .end local v22    # "_arg2":I
    :cond_4
    const/4 v15, 0x0

    #@101
    .restart local v15    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_4

    #@102
    .line 138
    .end local v15    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_5
    const-string/jumbo v3, "android.print.IPrintManager"

    #@105
    move-object/from16 v0, p2

    #@107
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10a
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v3

    #@10e
    if-eqz v3, :cond_5

    #@110
    .line 141
    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@112
    move-object/from16 v0, p2

    #@114
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@117
    move-result-object v15

    #@118
    check-cast v15, Landroid/print/PrintJobId;

    #@11a
    .line 147
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11d
    move-result v19

    #@11e
    .line 149
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@121
    move-result v22

    #@122
    .line 150
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    #@124
    move/from16 v1, v19

    #@126
    move/from16 v2, v22

    #@128
    invoke-virtual {v0, v15, v1, v2}, Landroid/print/IPrintManager$Stub;->restartPrintJob(Landroid/print/PrintJobId;II)V

    #@12b
    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12e
    .line 152
    const/4 v3, 0x1

    #@12f
    return v3

    #@130
    .line 144
    .end local v19    # "_arg1":I
    .end local v22    # "_arg2":I
    :cond_5
    const/4 v15, 0x0

    #@131
    .restart local v15    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_5

    #@132
    .line 156
    .end local v15    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_6
    const-string/jumbo v3, "android.print.IPrintManager"

    #@135
    move-object/from16 v0, p2

    #@137
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13a
    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@13d
    move-result-object v3

    #@13e
    invoke-static {v3}, Landroid/print/IPrintJobStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintJobStateChangeListener;

    #@141
    move-result-object v12

    #@142
    .line 160
    .local v12, "_arg0":Landroid/print/IPrintJobStateChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@145
    move-result v19

    #@146
    .line 162
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@149
    move-result v22

    #@14a
    .line 163
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    #@14c
    move/from16 v1, v19

    #@14e
    move/from16 v2, v22

    #@150
    invoke-virtual {v0, v12, v1, v2}, Landroid/print/IPrintManager$Stub;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V

    #@153
    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@156
    .line 165
    const/4 v3, 0x1

    #@157
    return v3

    #@158
    .line 169
    .end local v12    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    .end local v19    # "_arg1":I
    .end local v22    # "_arg2":I
    :sswitch_7
    const-string/jumbo v3, "android.print.IPrintManager"

    #@15b
    move-object/from16 v0, p2

    #@15d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@160
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@163
    move-result-object v3

    #@164
    invoke-static {v3}, Landroid/print/IPrintJobStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintJobStateChangeListener;

    #@167
    move-result-object v12

    #@168
    .line 173
    .restart local v12    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16b
    move-result v19

    #@16c
    .line 174
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    #@16e
    move/from16 v1, v19

    #@170
    invoke-virtual {v0, v12, v1}, Landroid/print/IPrintManager$Stub;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V

    #@173
    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@176
    .line 176
    const/4 v3, 0x1

    #@177
    return v3

    #@178
    .line 180
    .end local v12    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    .end local v19    # "_arg1":I
    :sswitch_8
    const-string/jumbo v3, "android.print.IPrintManager"

    #@17b
    move-object/from16 v0, p2

    #@17d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@180
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@183
    move-result-object v3

    #@184
    invoke-static {v3}, Landroid/print/IPrintServicesChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintServicesChangeListener;

    #@187
    move-result-object v13

    #@188
    .line 184
    .local v13, "_arg0":Landroid/print/IPrintServicesChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18b
    move-result v19

    #@18c
    .line 185
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    #@18e
    move/from16 v1, v19

    #@190
    invoke-virtual {v0, v13, v1}, Landroid/print/IPrintManager$Stub;->addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V

    #@193
    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@196
    .line 187
    const/4 v3, 0x1

    #@197
    return v3

    #@198
    .line 191
    .end local v13    # "_arg0":Landroid/print/IPrintServicesChangeListener;
    .end local v19    # "_arg1":I
    :sswitch_9
    const-string/jumbo v3, "android.print.IPrintManager"

    #@19b
    move-object/from16 v0, p2

    #@19d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a0
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a3
    move-result-object v3

    #@1a4
    invoke-static {v3}, Landroid/print/IPrintServicesChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintServicesChangeListener;

    #@1a7
    move-result-object v13

    #@1a8
    .line 195
    .restart local v13    # "_arg0":Landroid/print/IPrintServicesChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ab
    move-result v19

    #@1ac
    .line 196
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    #@1ae
    move/from16 v1, v19

    #@1b0
    invoke-virtual {v0, v13, v1}, Landroid/print/IPrintManager$Stub;->removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V

    #@1b3
    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b6
    .line 198
    const/4 v3, 0x1

    #@1b7
    return v3

    #@1b8
    .line 202
    .end local v13    # "_arg0":Landroid/print/IPrintServicesChangeListener;
    .end local v19    # "_arg1":I
    :sswitch_a
    const-string/jumbo v3, "android.print.IPrintManager"

    #@1bb
    move-object/from16 v0, p2

    #@1bd
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c0
    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c3
    move-result v10

    #@1c4
    .line 206
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c7
    move-result v19

    #@1c8
    .line 207
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    #@1ca
    move/from16 v1, v19

    #@1cc
    invoke-virtual {v0, v10, v1}, Landroid/print/IPrintManager$Stub;->getPrintServices(II)Ljava/util/List;

    #@1cf
    move-result-object v27

    #@1d0
    .line 208
    .local v27, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d3
    .line 209
    move-object/from16 v0, p3

    #@1d5
    move-object/from16 v1, v27

    #@1d7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1da
    .line 210
    const/4 v3, 0x1

    #@1db
    return v3

    #@1dc
    .line 214
    .end local v10    # "_arg0":I
    .end local v19    # "_arg1":I
    .end local v27    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :sswitch_b
    const-string/jumbo v3, "android.print.IPrintManager"

    #@1df
    move-object/from16 v0, p2

    #@1e1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e4
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e7
    move-result v3

    #@1e8
    if-eqz v3, :cond_6

    #@1ea
    .line 217
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ec
    move-object/from16 v0, p2

    #@1ee
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f1
    move-result-object v11

    #@1f2
    check-cast v11, Landroid/content/ComponentName;

    #@1f4
    .line 223
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f7
    move-result v3

    #@1f8
    if-eqz v3, :cond_7

    #@1fa
    const/16 v21, 0x1

    #@1fc
    .line 225
    .local v21, "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ff
    move-result v22

    #@200
    .line 226
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    #@202
    move/from16 v1, v21

    #@204
    move/from16 v2, v22

    #@206
    invoke-virtual {v0, v11, v1, v2}, Landroid/print/IPrintManager$Stub;->setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V

    #@209
    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20c
    .line 228
    const/4 v3, 0x1

    #@20d
    return v3

    #@20e
    .line 220
    .end local v21    # "_arg1":Z
    .end local v22    # "_arg2":I
    :cond_6
    const/4 v11, 0x0

    #@20f
    .local v11, "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    #@210
    .line 223
    .end local v11    # "_arg0":Landroid/content/ComponentName;
    :cond_7
    const/16 v21, 0x0

    #@212
    .restart local v21    # "_arg1":Z
    goto :goto_7

    #@213
    .line 232
    .end local v21    # "_arg1":Z
    :sswitch_c
    const-string/jumbo v3, "android.print.IPrintManager"

    #@216
    move-object/from16 v0, p2

    #@218
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21b
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@21e
    move-result-object v3

    #@21f
    invoke-static {v3}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/recommendation/IRecommendationsChangeListener;

    #@222
    move-result-object v17

    #@223
    .line 236
    .local v17, "_arg0":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@226
    move-result v19

    #@227
    .line 237
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    #@229
    move-object/from16 v1, v17

    #@22b
    move/from16 v2, v19

    #@22d
    invoke-virtual {v0, v1, v2}, Landroid/print/IPrintManager$Stub;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V

    #@230
    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@233
    .line 239
    const/4 v3, 0x1

    #@234
    return v3

    #@235
    .line 243
    .end local v17    # "_arg0":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .end local v19    # "_arg1":I
    :sswitch_d
    const-string/jumbo v3, "android.print.IPrintManager"

    #@238
    move-object/from16 v0, p2

    #@23a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23d
    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@240
    move-result-object v3

    #@241
    invoke-static {v3}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/recommendation/IRecommendationsChangeListener;

    #@244
    move-result-object v17

    #@245
    .line 247
    .restart local v17    # "_arg0":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@248
    move-result v19

    #@249
    .line 248
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    #@24b
    move-object/from16 v1, v17

    #@24d
    move/from16 v2, v19

    #@24f
    invoke-virtual {v0, v1, v2}, Landroid/print/IPrintManager$Stub;->removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V

    #@252
    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@255
    .line 250
    const/4 v3, 0x1

    #@256
    return v3

    #@257
    .line 254
    .end local v17    # "_arg0":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .end local v19    # "_arg1":I
    :sswitch_e
    const-string/jumbo v3, "android.print.IPrintManager"

    #@25a
    move-object/from16 v0, p2

    #@25c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25f
    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@262
    move-result v10

    #@263
    .line 257
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@265
    invoke-virtual {v0, v10}, Landroid/print/IPrintManager$Stub;->getPrintServiceRecommendations(I)Ljava/util/List;

    #@268
    move-result-object v28

    #@269
    .line 258
    .local v28, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26c
    .line 259
    move-object/from16 v0, p3

    #@26e
    move-object/from16 v1, v28

    #@270
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@273
    .line 260
    const/4 v3, 0x1

    #@274
    return v3

    #@275
    .line 264
    .end local v10    # "_arg0":I
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    :sswitch_f
    const-string/jumbo v3, "android.print.IPrintManager"

    #@278
    move-object/from16 v0, p2

    #@27a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27d
    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@280
    move-result-object v3

    #@281
    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    #@284
    move-result-object v14

    #@285
    .line 268
    .local v14, "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@288
    move-result v19

    #@289
    .line 269
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    #@28b
    move/from16 v1, v19

    #@28d
    invoke-virtual {v0, v14, v1}, Landroid/print/IPrintManager$Stub;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V

    #@290
    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@293
    .line 271
    const/4 v3, 0x1

    #@294
    return v3

    #@295
    .line 275
    .end local v14    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v19    # "_arg1":I
    :sswitch_10
    const-string/jumbo v3, "android.print.IPrintManager"

    #@298
    move-object/from16 v0, p2

    #@29a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29d
    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a0
    move-result-object v3

    #@2a1
    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    #@2a4
    move-result-object v14

    #@2a5
    .line 279
    .restart local v14    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a7
    move-object/from16 v0, p2

    #@2a9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@2ac
    move-result-object v20

    #@2ad
    .line 281
    .local v20, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b0
    move-result v22

    #@2b1
    .line 282
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    #@2b3
    move-object/from16 v1, v20

    #@2b5
    move/from16 v2, v22

    #@2b7
    invoke-virtual {v0, v14, v1, v2}, Landroid/print/IPrintManager$Stub;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V

    #@2ba
    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bd
    .line 284
    const/4 v3, 0x1

    #@2be
    return v3

    #@2bf
    .line 288
    .end local v14    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v20    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v22    # "_arg2":I
    :sswitch_11
    const-string/jumbo v3, "android.print.IPrintManager"

    #@2c2
    move-object/from16 v0, p2

    #@2c4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c7
    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2ca
    move-result-object v3

    #@2cb
    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    #@2ce
    move-result-object v14

    #@2cf
    .line 292
    .restart local v14    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d2
    move-result v19

    #@2d3
    .line 293
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    #@2d5
    move/from16 v1, v19

    #@2d7
    invoke-virtual {v0, v14, v1}, Landroid/print/IPrintManager$Stub;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V

    #@2da
    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2dd
    .line 295
    const/4 v3, 0x1

    #@2de
    return v3

    #@2df
    .line 299
    .end local v14    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v19    # "_arg1":I
    :sswitch_12
    const-string/jumbo v3, "android.print.IPrintManager"

    #@2e2
    move-object/from16 v0, p2

    #@2e4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e7
    .line 301
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e9
    move-object/from16 v0, p2

    #@2eb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@2ee
    move-result-object v18

    #@2ef
    .line 303
    .local v18, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f2
    move-result v19

    #@2f3
    .line 304
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    #@2f5
    move-object/from16 v1, v18

    #@2f7
    move/from16 v2, v19

    #@2f9
    invoke-virtual {v0, v1, v2}, Landroid/print/IPrintManager$Stub;->validatePrinters(Ljava/util/List;I)V

    #@2fc
    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ff
    .line 306
    const/4 v3, 0x1

    #@300
    return v3

    #@301
    .line 310
    .end local v18    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v19    # "_arg1":I
    :sswitch_13
    const-string/jumbo v3, "android.print.IPrintManager"

    #@304
    move-object/from16 v0, p2

    #@306
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@309
    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30c
    move-result v3

    #@30d
    if-eqz v3, :cond_8

    #@30f
    .line 313
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@311
    move-object/from16 v0, p2

    #@313
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@316
    move-result-object v16

    #@317
    check-cast v16, Landroid/print/PrinterId;

    #@319
    .line 319
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31c
    move-result v19

    #@31d
    .line 320
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    #@31f
    move-object/from16 v1, v16

    #@321
    move/from16 v2, v19

    #@323
    invoke-virtual {v0, v1, v2}, Landroid/print/IPrintManager$Stub;->startPrinterStateTracking(Landroid/print/PrinterId;I)V

    #@326
    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@329
    .line 322
    const/4 v3, 0x1

    #@32a
    return v3

    #@32b
    .line 316
    .end local v19    # "_arg1":I
    :cond_8
    const/16 v16, 0x0

    #@32d
    .local v16, "_arg0":Landroid/print/PrinterId;
    goto :goto_8

    #@32e
    .line 326
    .end local v16    # "_arg0":Landroid/print/PrinterId;
    :sswitch_14
    const-string/jumbo v3, "android.print.IPrintManager"

    #@331
    move-object/from16 v0, p2

    #@333
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@336
    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@339
    move-result v3

    #@33a
    if-eqz v3, :cond_9

    #@33c
    .line 329
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33e
    move-object/from16 v0, p2

    #@340
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@343
    move-result-object v16

    #@344
    check-cast v16, Landroid/print/PrinterId;

    #@346
    .line 335
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@349
    move-result v19

    #@34a
    .line 336
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    #@34c
    move-object/from16 v1, v16

    #@34e
    move/from16 v2, v19

    #@350
    invoke-virtual {v0, v1, v2}, Landroid/print/IPrintManager$Stub;->getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;

    #@353
    move-result-object v23

    #@354
    .line 337
    .local v23, "_result":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@357
    .line 338
    if-eqz v23, :cond_a

    #@359
    .line 339
    const/4 v3, 0x1

    #@35a
    move-object/from16 v0, p3

    #@35c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@35f
    .line 340
    const/4 v3, 0x1

    #@360
    move-object/from16 v0, v23

    #@362
    move-object/from16 v1, p3

    #@364
    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@367
    .line 345
    :goto_a
    const/4 v3, 0x1

    #@368
    return v3

    #@369
    .line 332
    .end local v19    # "_arg1":I
    .end local v23    # "_result":Landroid/graphics/drawable/Icon;
    :cond_9
    const/16 v16, 0x0

    #@36b
    .restart local v16    # "_arg0":Landroid/print/PrinterId;
    goto :goto_9

    #@36c
    .line 343
    .end local v16    # "_arg0":Landroid/print/PrinterId;
    .restart local v19    # "_arg1":I
    .restart local v23    # "_result":Landroid/graphics/drawable/Icon;
    :cond_a
    const/4 v3, 0x0

    #@36d
    move-object/from16 v0, p3

    #@36f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@372
    goto :goto_a

    #@373
    .line 349
    .end local v19    # "_arg1":I
    .end local v23    # "_result":Landroid/graphics/drawable/Icon;
    :sswitch_15
    const-string/jumbo v3, "android.print.IPrintManager"

    #@376
    move-object/from16 v0, p2

    #@378
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37b
    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37e
    move-result v3

    #@37f
    if-eqz v3, :cond_b

    #@381
    .line 352
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@383
    move-object/from16 v0, p2

    #@385
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@388
    move-result-object v16

    #@389
    check-cast v16, Landroid/print/PrinterId;

    #@38b
    .line 358
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38e
    move-result v19

    #@38f
    .line 359
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    #@391
    move-object/from16 v1, v16

    #@393
    move/from16 v2, v19

    #@395
    invoke-virtual {v0, v1, v2}, Landroid/print/IPrintManager$Stub;->stopPrinterStateTracking(Landroid/print/PrinterId;I)V

    #@398
    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39b
    .line 361
    const/4 v3, 0x1

    #@39c
    return v3

    #@39d
    .line 355
    .end local v19    # "_arg1":I
    :cond_b
    const/16 v16, 0x0

    #@39f
    .restart local v16    # "_arg0":Landroid/print/PrinterId;
    goto :goto_b

    #@3a0
    .line 365
    .end local v16    # "_arg0":Landroid/print/PrinterId;
    :sswitch_16
    const-string/jumbo v3, "android.print.IPrintManager"

    #@3a3
    move-object/from16 v0, p2

    #@3a5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a8
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3ab
    move-result-object v3

    #@3ac
    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    #@3af
    move-result-object v14

    #@3b0
    .line 369
    .restart local v14    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b3
    move-result v19

    #@3b4
    .line 370
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    #@3b6
    move/from16 v1, v19

    #@3b8
    invoke-virtual {v0, v14, v1}, Landroid/print/IPrintManager$Stub;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V

    #@3bb
    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3be
    .line 372
    const/4 v3, 0x1

    #@3bf
    return v3

    #@3c0
    .line 43
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
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
