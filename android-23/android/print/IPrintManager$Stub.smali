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

.field static final TRANSACTION_cancelPrintJob:I = 0x4

.field static final TRANSACTION_createPrinterDiscoverySession:I = 0xa

.field static final TRANSACTION_destroyPrinterDiscoverySession:I = 0x10

.field static final TRANSACTION_getEnabledPrintServices:I = 0x9

.field static final TRANSACTION_getInstalledPrintServices:I = 0x8

.field static final TRANSACTION_getPrintJobInfo:I = 0x2

.field static final TRANSACTION_getPrintJobInfos:I = 0x1

.field static final TRANSACTION_print:I = 0x3

.field static final TRANSACTION_removePrintJobStateChangeListener:I = 0x7

.field static final TRANSACTION_restartPrintJob:I = 0x5

.field static final TRANSACTION_startPrinterDiscovery:I = 0xb

.field static final TRANSACTION_startPrinterStateTracking:I = 0xe

.field static final TRANSACTION_stopPrinterDiscovery:I = 0xc

.field static final TRANSACTION_stopPrinterStateTracking:I = 0xf

.field static final TRANSACTION_validatePrinters:I = 0xd


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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 288
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
    move-result v16

    #@22
    .line 57
    .local v16, "_arg1":I
    move-object/from16 v0, p0

    #@24
    move/from16 v1, v16

    #@26
    invoke-virtual {v0, v10, v1}, Landroid/print/IPrintManager$Stub;->getPrintJobInfos(II)Ljava/util/List;

    #@29
    move-result-object v21

    #@2a
    .line 58
    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d
    .line 59
    move-object/from16 v0, p3

    #@2f
    move-object/from16 v1, v21

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
    .end local v16    # "_arg1":I
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
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
    move-result-object v13

    #@4c
    check-cast v13, Landroid/print/PrintJobId;

    #@4e
    .line 73
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v16

    #@52
    .line 75
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v18

    #@56
    .line 76
    .local v18, "_arg2":I
    move-object/from16 v0, p0

    #@58
    move/from16 v1, v16

    #@5a
    move/from16 v2, v18

    #@5c
    invoke-virtual {v0, v13, v1, v2}, Landroid/print/IPrintManager$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;

    #@5f
    move-result-object v20

    #@60
    .line 77
    .local v20, "_result":Landroid/print/PrintJobInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@63
    .line 78
    if-eqz v20, :cond_1

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
    move-object/from16 v0, v20

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
    .end local v16    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v20    # "_result":Landroid/print/PrintJobInfo;
    :cond_0
    const/4 v13, 0x0

    #@76
    .local v13, "_arg0":Landroid/print/PrintJobId;
    goto :goto_0

    #@77
    .line 83
    .end local v13    # "_arg0":Landroid/print/PrintJobId;
    .restart local v16    # "_arg1":I
    .restart local v18    # "_arg2":I
    .restart local v20    # "_result":Landroid/print/PrintJobInfo;
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
    .end local v16    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v20    # "_result":Landroid/print/PrintJobInfo;
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
    move-result-object v19

    #@b4
    .line 108
    .local v19, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b7
    .line 109
    if-eqz v19, :cond_3

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
    move-object/from16 v0, v19

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
    .end local v19    # "_result":Landroid/os/Bundle;
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
    .restart local v19    # "_result":Landroid/os/Bundle;
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
    .end local v19    # "_result":Landroid/os/Bundle;
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
    move-result-object v13

    #@e8
    check-cast v13, Landroid/print/PrintJobId;

    #@ea
    .line 129
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ed
    move-result v16

    #@ee
    .line 131
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f1
    move-result v18

    #@f2
    .line 132
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    #@f4
    move/from16 v1, v16

    #@f6
    move/from16 v2, v18

    #@f8
    invoke-virtual {v0, v13, v1, v2}, Landroid/print/IPrintManager$Stub;->cancelPrintJob(Landroid/print/PrintJobId;II)V

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
    .end local v16    # "_arg1":I
    .end local v18    # "_arg2":I
    :cond_4
    const/4 v13, 0x0

    #@101
    .restart local v13    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_4

    #@102
    .line 138
    .end local v13    # "_arg0":Landroid/print/PrintJobId;
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
    move-result-object v13

    #@118
    check-cast v13, Landroid/print/PrintJobId;

    #@11a
    .line 147
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11d
    move-result v16

    #@11e
    .line 149
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@121
    move-result v18

    #@122
    .line 150
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    #@124
    move/from16 v1, v16

    #@126
    move/from16 v2, v18

    #@128
    invoke-virtual {v0, v13, v1, v2}, Landroid/print/IPrintManager$Stub;->restartPrintJob(Landroid/print/PrintJobId;II)V

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
    .end local v16    # "_arg1":I
    .end local v18    # "_arg2":I
    :cond_5
    const/4 v13, 0x0

    #@131
    .restart local v13    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_5

    #@132
    .line 156
    .end local v13    # "_arg0":Landroid/print/PrintJobId;
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
    move-result-object v11

    #@142
    .line 160
    .local v11, "_arg0":Landroid/print/IPrintJobStateChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@145
    move-result v16

    #@146
    .line 162
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@149
    move-result v18

    #@14a
    .line 163
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    #@14c
    move/from16 v1, v16

    #@14e
    move/from16 v2, v18

    #@150
    invoke-virtual {v0, v11, v1, v2}, Landroid/print/IPrintManager$Stub;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V

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
    .end local v11    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    .end local v16    # "_arg1":I
    .end local v18    # "_arg2":I
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
    move-result-object v11

    #@168
    .line 173
    .restart local v11    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16b
    move-result v16

    #@16c
    .line 174
    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    #@16e
    move/from16 v1, v16

    #@170
    invoke-virtual {v0, v11, v1}, Landroid/print/IPrintManager$Stub;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V

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
    .end local v11    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    .end local v16    # "_arg1":I
    :sswitch_8
    const-string/jumbo v3, "android.print.IPrintManager"

    #@17b
    move-object/from16 v0, p2

    #@17d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@180
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@183
    move-result v10

    #@184
    .line 183
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@186
    invoke-virtual {v0, v10}, Landroid/print/IPrintManager$Stub;->getInstalledPrintServices(I)Ljava/util/List;

    #@189
    move-result-object v22

    #@18a
    .line 184
    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18d
    .line 185
    move-object/from16 v0, p3

    #@18f
    move-object/from16 v1, v22

    #@191
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@194
    .line 186
    const/4 v3, 0x1

    #@195
    return v3

    #@196
    .line 190
    .end local v10    # "_arg0":I
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :sswitch_9
    const-string/jumbo v3, "android.print.IPrintManager"

    #@199
    move-object/from16 v0, p2

    #@19b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19e
    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a1
    move-result v10

    #@1a2
    .line 193
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@1a4
    invoke-virtual {v0, v10}, Landroid/print/IPrintManager$Stub;->getEnabledPrintServices(I)Ljava/util/List;

    #@1a7
    move-result-object v22

    #@1a8
    .line 194
    .restart local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ab
    .line 195
    move-object/from16 v0, p3

    #@1ad
    move-object/from16 v1, v22

    #@1af
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1b2
    .line 196
    const/4 v3, 0x1

    #@1b3
    return v3

    #@1b4
    .line 200
    .end local v10    # "_arg0":I
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :sswitch_a
    const-string/jumbo v3, "android.print.IPrintManager"

    #@1b7
    move-object/from16 v0, p2

    #@1b9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bc
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1bf
    move-result-object v3

    #@1c0
    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    #@1c3
    move-result-object v12

    #@1c4
    .line 204
    .local v12, "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c7
    move-result v16

    #@1c8
    .line 205
    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    #@1ca
    move/from16 v1, v16

    #@1cc
    invoke-virtual {v0, v12, v1}, Landroid/print/IPrintManager$Stub;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V

    #@1cf
    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d2
    .line 207
    const/4 v3, 0x1

    #@1d3
    return v3

    #@1d4
    .line 211
    .end local v12    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v16    # "_arg1":I
    :sswitch_b
    const-string/jumbo v3, "android.print.IPrintManager"

    #@1d7
    move-object/from16 v0, p2

    #@1d9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1dc
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1df
    move-result-object v3

    #@1e0
    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    #@1e3
    move-result-object v12

    #@1e4
    .line 215
    .restart local v12    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e6
    move-object/from16 v0, p2

    #@1e8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1eb
    move-result-object v17

    #@1ec
    .line 217
    .local v17, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ef
    move-result v18

    #@1f0
    .line 218
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    #@1f2
    move-object/from16 v1, v17

    #@1f4
    move/from16 v2, v18

    #@1f6
    invoke-virtual {v0, v12, v1, v2}, Landroid/print/IPrintManager$Stub;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V

    #@1f9
    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fc
    .line 220
    const/4 v3, 0x1

    #@1fd
    return v3

    #@1fe
    .line 224
    .end local v12    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v17    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v18    # "_arg2":I
    :sswitch_c
    const-string/jumbo v3, "android.print.IPrintManager"

    #@201
    move-object/from16 v0, p2

    #@203
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@206
    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@209
    move-result-object v3

    #@20a
    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    #@20d
    move-result-object v12

    #@20e
    .line 228
    .restart local v12    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@211
    move-result v16

    #@212
    .line 229
    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    #@214
    move/from16 v1, v16

    #@216
    invoke-virtual {v0, v12, v1}, Landroid/print/IPrintManager$Stub;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V

    #@219
    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21c
    .line 231
    const/4 v3, 0x1

    #@21d
    return v3

    #@21e
    .line 235
    .end local v12    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v16    # "_arg1":I
    :sswitch_d
    const-string/jumbo v3, "android.print.IPrintManager"

    #@221
    move-object/from16 v0, p2

    #@223
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@226
    .line 237
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@228
    move-object/from16 v0, p2

    #@22a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@22d
    move-result-object v15

    #@22e
    .line 239
    .local v15, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@231
    move-result v16

    #@232
    .line 240
    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    #@234
    move/from16 v1, v16

    #@236
    invoke-virtual {v0, v15, v1}, Landroid/print/IPrintManager$Stub;->validatePrinters(Ljava/util/List;I)V

    #@239
    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23c
    .line 242
    const/4 v3, 0x1

    #@23d
    return v3

    #@23e
    .line 246
    .end local v15    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v16    # "_arg1":I
    :sswitch_e
    const-string/jumbo v3, "android.print.IPrintManager"

    #@241
    move-object/from16 v0, p2

    #@243
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@246
    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@249
    move-result v3

    #@24a
    if-eqz v3, :cond_6

    #@24c
    .line 249
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24e
    move-object/from16 v0, p2

    #@250
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@253
    move-result-object v14

    #@254
    check-cast v14, Landroid/print/PrinterId;

    #@256
    .line 255
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@259
    move-result v16

    #@25a
    .line 256
    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    #@25c
    move/from16 v1, v16

    #@25e
    invoke-virtual {v0, v14, v1}, Landroid/print/IPrintManager$Stub;->startPrinterStateTracking(Landroid/print/PrinterId;I)V

    #@261
    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@264
    .line 258
    const/4 v3, 0x1

    #@265
    return v3

    #@266
    .line 252
    .end local v16    # "_arg1":I
    :cond_6
    const/4 v14, 0x0

    #@267
    .local v14, "_arg0":Landroid/print/PrinterId;
    goto :goto_6

    #@268
    .line 262
    .end local v14    # "_arg0":Landroid/print/PrinterId;
    :sswitch_f
    const-string/jumbo v3, "android.print.IPrintManager"

    #@26b
    move-object/from16 v0, p2

    #@26d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@270
    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@273
    move-result v3

    #@274
    if-eqz v3, :cond_7

    #@276
    .line 265
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@278
    move-object/from16 v0, p2

    #@27a
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27d
    move-result-object v14

    #@27e
    check-cast v14, Landroid/print/PrinterId;

    #@280
    .line 271
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@283
    move-result v16

    #@284
    .line 272
    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    #@286
    move/from16 v1, v16

    #@288
    invoke-virtual {v0, v14, v1}, Landroid/print/IPrintManager$Stub;->stopPrinterStateTracking(Landroid/print/PrinterId;I)V

    #@28b
    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28e
    .line 274
    const/4 v3, 0x1

    #@28f
    return v3

    #@290
    .line 268
    .end local v16    # "_arg1":I
    :cond_7
    const/4 v14, 0x0

    #@291
    .restart local v14    # "_arg0":Landroid/print/PrinterId;
    goto :goto_7

    #@292
    .line 278
    .end local v14    # "_arg0":Landroid/print/PrinterId;
    :sswitch_10
    const-string/jumbo v3, "android.print.IPrintManager"

    #@295
    move-object/from16 v0, p2

    #@297
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29a
    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29d
    move-result-object v3

    #@29e
    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    #@2a1
    move-result-object v12

    #@2a2
    .line 282
    .restart local v12    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a5
    move-result v16

    #@2a6
    .line 283
    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    #@2a8
    move/from16 v1, v16

    #@2aa
    invoke-virtual {v0, v12, v1}, Landroid/print/IPrintManager$Stub;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V

    #@2ad
    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b0
    .line 285
    const/4 v3, 0x1

    #@2b1
    return v3

    #@2b2
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
