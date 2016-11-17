.class public abstract Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.super Landroid/os/Binder;
.source "IAppWidgetService.java"

# interfaces
.implements Lcom/android/internal/appwidget/IAppWidgetService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/appwidget/IAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.appwidget.IAppWidgetService"

.field static final TRANSACTION_allocateAppWidgetId:I = 0x3

.field static final TRANSACTION_bindAppWidgetId:I = 0x14

.field static final TRANSACTION_bindRemoteViewsService:I = 0x15

.field static final TRANSACTION_createAppWidgetConfigIntentSender:I = 0x9

.field static final TRANSACTION_deleteAllHosts:I = 0x6

.field static final TRANSACTION_deleteAppWidgetId:I = 0x4

.field static final TRANSACTION_deleteHost:I = 0x5

.field static final TRANSACTION_getAppWidgetIds:I = 0x17

.field static final TRANSACTION_getAppWidgetIdsForHost:I = 0x8

.field static final TRANSACTION_getAppWidgetInfo:I = 0x11

.field static final TRANSACTION_getAppWidgetOptions:I = 0xc

.field static final TRANSACTION_getAppWidgetViews:I = 0x7

.field static final TRANSACTION_getInstalledProvidersForProfile:I = 0x10

.field static final TRANSACTION_hasBindAppWidgetPermission:I = 0x12

.field static final TRANSACTION_isBoundWidgetPackage:I = 0x18

.field static final TRANSACTION_notifyAppWidgetViewDataChanged:I = 0xf

.field static final TRANSACTION_partiallyUpdateAppWidgetIds:I = 0xd

.field static final TRANSACTION_setBindAppWidgetPermission:I = 0x13

.field static final TRANSACTION_startListening:I = 0x1

.field static final TRANSACTION_stopListening:I = 0x2

.field static final TRANSACTION_unbindRemoteViewsService:I = 0x16

.field static final TRANSACTION_updateAppWidgetIds:I = 0xa

.field static final TRANSACTION_updateAppWidgetOptions:I = 0xb

.field static final TRANSACTION_updateAppWidgetProvider:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "com.android.internal.appwidget.IAppWidgetService"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "com.android.internal.appwidget.IAppWidgetService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/appwidget/IAppWidgetService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Lcom/android/internal/appwidget/IAppWidgetService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 33
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 440
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;

    #@21
    move-result-object v4

    #@22
    .line 52
    .local v4, "_arg0":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    .line 54
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v6

    #@2a
    .line 56
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@2d
    move-result-object v7

    #@2e
    .line 58
    .local v7, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v24

    #@32
    .line 59
    .local v24, "_arg4_length":I
    if-gez v24, :cond_0

    #@34
    .line 60
    const/4 v8, 0x0

    #@35
    :goto_0
    move-object/from16 v3, p0

    #@37
    .line 65
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I[I)Landroid/content/pm/ParceledListSlice;

    #@3a
    move-result-object v28

    #@3b
    .line 66
    .local v28, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e
    .line 67
    if-eqz v28, :cond_1

    #@40
    .line 68
    const/4 v3, 0x1

    #@41
    move-object/from16 v0, p3

    #@43
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 69
    const/4 v3, 0x1

    #@47
    move-object/from16 v0, v28

    #@49
    move-object/from16 v1, p3

    #@4b
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@4e
    .line 74
    :goto_1
    move-object/from16 v0, p3

    #@50
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    #@53
    .line 75
    const/4 v3, 0x1

    #@54
    return v3

    #@55
    .line 63
    .end local v28    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_0
    move/from16 v0, v24

    #@57
    new-array v8, v0, [I

    #@59
    .local v8, "_arg4":[I
    goto :goto_0

    #@5a
    .line 72
    .end local v8    # "_arg4":[I
    .restart local v28    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_1
    const/4 v3, 0x0

    #@5b
    move-object/from16 v0, p3

    #@5d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    goto :goto_1

    #@61
    .line 79
    .end local v4    # "_arg0":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":[I
    .end local v24    # "_arg4_length":I
    .end local v28    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@64
    move-object/from16 v0, p2

    #@66
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6c
    move-result-object v10

    #@6d
    .line 83
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@70
    move-result v11

    #@71
    .line 84
    .local v11, "_arg1":I
    move-object/from16 v0, p0

    #@73
    invoke-virtual {v0, v10, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->stopListening(Ljava/lang/String;I)V

    #@76
    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    .line 86
    const/4 v3, 0x1

    #@7a
    return v3

    #@7b
    .line 90
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    :sswitch_3
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@7e
    move-object/from16 v0, p2

    #@80
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@86
    move-result-object v10

    #@87
    .line 94
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8a
    move-result v11

    #@8b
    .line 95
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    #@8d
    invoke-virtual {v0, v10, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->allocateAppWidgetId(Ljava/lang/String;I)I

    #@90
    move-result v25

    #@91
    .line 96
    .local v25, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@94
    .line 97
    move-object/from16 v0, p3

    #@96
    move/from16 v1, v25

    #@98
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9b
    .line 98
    const/4 v3, 0x1

    #@9c
    return v3

    #@9d
    .line 102
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v25    # "_result":I
    :sswitch_4
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@a0
    move-object/from16 v0, p2

    #@a2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a5
    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a8
    move-result-object v10

    #@a9
    .line 106
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ac
    move-result v11

    #@ad
    .line 107
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    #@af
    invoke-virtual {v0, v10, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAppWidgetId(Ljava/lang/String;I)V

    #@b2
    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b5
    .line 109
    const/4 v3, 0x1

    #@b6
    return v3

    #@b7
    .line 113
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    :sswitch_5
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@ba
    move-object/from16 v0, p2

    #@bc
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bf
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c2
    move-result-object v10

    #@c3
    .line 117
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c6
    move-result v11

    #@c7
    .line 118
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    #@c9
    invoke-virtual {v0, v10, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteHost(Ljava/lang/String;I)V

    #@cc
    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cf
    .line 120
    const/4 v3, 0x1

    #@d0
    return v3

    #@d1
    .line 124
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    :sswitch_6
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@d4
    move-object/from16 v0, p2

    #@d6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9
    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAllHosts()V

    #@dc
    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@df
    .line 127
    const/4 v3, 0x1

    #@e0
    return v3

    #@e1
    .line 131
    :sswitch_7
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@e4
    move-object/from16 v0, p2

    #@e6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e9
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ec
    move-result-object v10

    #@ed
    .line 135
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f0
    move-result v11

    #@f1
    .line 136
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    #@f3
    invoke-virtual {v0, v10, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    #@f6
    move-result-object v30

    #@f7
    .line 137
    .local v30, "_result":Landroid/widget/RemoteViews;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fa
    .line 138
    if-eqz v30, :cond_2

    #@fc
    .line 139
    const/4 v3, 0x1

    #@fd
    move-object/from16 v0, p3

    #@ff
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@102
    .line 140
    const/4 v3, 0x1

    #@103
    move-object/from16 v0, v30

    #@105
    move-object/from16 v1, p3

    #@107
    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@10a
    .line 145
    :goto_2
    const/4 v3, 0x1

    #@10b
    return v3

    #@10c
    .line 143
    :cond_2
    const/4 v3, 0x0

    #@10d
    move-object/from16 v0, p3

    #@10f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@112
    goto :goto_2

    #@113
    .line 149
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v30    # "_result":Landroid/widget/RemoteViews;
    :sswitch_8
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@116
    move-object/from16 v0, p2

    #@118
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11b
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11e
    move-result-object v10

    #@11f
    .line 153
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@122
    move-result v11

    #@123
    .line 154
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    #@125
    invoke-virtual {v0, v10, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I

    #@128
    move-result-object v32

    #@129
    .line 155
    .local v32, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12c
    .line 156
    move-object/from16 v0, p3

    #@12e
    move-object/from16 v1, v32

    #@130
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@133
    .line 157
    const/4 v3, 0x1

    #@134
    return v3

    #@135
    .line 161
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v32    # "_result":[I
    :sswitch_9
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@138
    move-object/from16 v0, p2

    #@13a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13d
    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@140
    move-result-object v10

    #@141
    .line 165
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@144
    move-result v11

    #@145
    .line 167
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@148
    move-result v6

    #@149
    .line 168
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    #@14b
    invoke-virtual {v0, v10, v11, v6}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    #@14e
    move-result-object v27

    #@14f
    .line 169
    .local v27, "_result":Landroid/content/IntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@152
    .line 170
    if-eqz v27, :cond_3

    #@154
    .line 171
    const/4 v3, 0x1

    #@155
    move-object/from16 v0, p3

    #@157
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15a
    .line 172
    const/4 v3, 0x1

    #@15b
    move-object/from16 v0, v27

    #@15d
    move-object/from16 v1, p3

    #@15f
    invoke-virtual {v0, v1, v3}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    #@162
    .line 177
    :goto_3
    const/4 v3, 0x1

    #@163
    return v3

    #@164
    .line 175
    :cond_3
    const/4 v3, 0x0

    #@165
    move-object/from16 v0, p3

    #@167
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@16a
    goto :goto_3

    #@16b
    .line 181
    .end local v6    # "_arg2":I
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v27    # "_result":Landroid/content/IntentSender;
    :sswitch_a
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@16e
    move-object/from16 v0, p2

    #@170
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@173
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@176
    move-result-object v10

    #@177
    .line 185
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@17a
    move-result-object v18

    #@17b
    .line 187
    .local v18, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17e
    move-result v3

    #@17f
    if-eqz v3, :cond_4

    #@181
    .line 188
    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@183
    move-object/from16 v0, p2

    #@185
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@188
    move-result-object v21

    #@189
    check-cast v21, Landroid/widget/RemoteViews;

    #@18b
    .line 193
    :goto_4
    move-object/from16 v0, p0

    #@18d
    move-object/from16 v1, v18

    #@18f
    move-object/from16 v2, v21

    #@191
    invoke-virtual {v0, v10, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    #@194
    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@197
    .line 195
    const/4 v3, 0x1

    #@198
    return v3

    #@199
    .line 191
    :cond_4
    const/16 v21, 0x0

    #@19b
    .local v21, "_arg2":Landroid/widget/RemoteViews;
    goto :goto_4

    #@19c
    .line 199
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":[I
    .end local v21    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_b
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@19f
    move-object/from16 v0, p2

    #@1a1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a4
    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a7
    move-result-object v10

    #@1a8
    .line 203
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ab
    move-result v11

    #@1ac
    .line 205
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1af
    move-result v3

    #@1b0
    if-eqz v3, :cond_5

    #@1b2
    .line 206
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b4
    move-object/from16 v0, p2

    #@1b6
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b9
    move-result-object v20

    #@1ba
    check-cast v20, Landroid/os/Bundle;

    #@1bc
    .line 211
    :goto_5
    move-object/from16 v0, p0

    #@1be
    move-object/from16 v1, v20

    #@1c0
    invoke-virtual {v0, v10, v11, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V

    #@1c3
    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c6
    .line 213
    const/4 v3, 0x1

    #@1c7
    return v3

    #@1c8
    .line 209
    :cond_5
    const/16 v20, 0x0

    #@1ca
    .local v20, "_arg2":Landroid/os/Bundle;
    goto :goto_5

    #@1cb
    .line 217
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v20    # "_arg2":Landroid/os/Bundle;
    :sswitch_c
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@1ce
    move-object/from16 v0, p2

    #@1d0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d3
    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d6
    move-result-object v10

    #@1d7
    .line 221
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1da
    move-result v11

    #@1db
    .line 222
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    #@1dd
    invoke-virtual {v0, v10, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;

    #@1e0
    move-result-object v29

    #@1e1
    .line 223
    .local v29, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e4
    .line 224
    if-eqz v29, :cond_6

    #@1e6
    .line 225
    const/4 v3, 0x1

    #@1e7
    move-object/from16 v0, p3

    #@1e9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1ec
    .line 226
    const/4 v3, 0x1

    #@1ed
    move-object/from16 v0, v29

    #@1ef
    move-object/from16 v1, p3

    #@1f1
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f4
    .line 231
    :goto_6
    const/4 v3, 0x1

    #@1f5
    return v3

    #@1f6
    .line 229
    :cond_6
    const/4 v3, 0x0

    #@1f7
    move-object/from16 v0, p3

    #@1f9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1fc
    goto :goto_6

    #@1fd
    .line 235
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v29    # "_result":Landroid/os/Bundle;
    :sswitch_d
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@200
    move-object/from16 v0, p2

    #@202
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@205
    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@208
    move-result-object v10

    #@209
    .line 239
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@20c
    move-result-object v18

    #@20d
    .line 241
    .restart local v18    # "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@210
    move-result v3

    #@211
    if-eqz v3, :cond_7

    #@213
    .line 242
    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@215
    move-object/from16 v0, p2

    #@217
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21a
    move-result-object v21

    #@21b
    check-cast v21, Landroid/widget/RemoteViews;

    #@21d
    .line 247
    :goto_7
    move-object/from16 v0, p0

    #@21f
    move-object/from16 v1, v18

    #@221
    move-object/from16 v2, v21

    #@223
    invoke-virtual {v0, v10, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    #@226
    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@229
    .line 249
    const/4 v3, 0x1

    #@22a
    return v3

    #@22b
    .line 245
    :cond_7
    const/16 v21, 0x0

    #@22d
    .restart local v21    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_7

    #@22e
    .line 253
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":[I
    .end local v21    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_e
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@231
    move-object/from16 v0, p2

    #@233
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@236
    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@239
    move-result v3

    #@23a
    if-eqz v3, :cond_8

    #@23c
    .line 256
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23e
    move-object/from16 v0, p2

    #@240
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@243
    move-result-object v16

    #@244
    check-cast v16, Landroid/content/ComponentName;

    #@246
    .line 262
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@249
    move-result v3

    #@24a
    if-eqz v3, :cond_9

    #@24c
    .line 263
    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24e
    move-object/from16 v0, p2

    #@250
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@253
    move-result-object v17

    #@254
    check-cast v17, Landroid/widget/RemoteViews;

    #@256
    .line 268
    :goto_9
    move-object/from16 v0, p0

    #@258
    move-object/from16 v1, v16

    #@25a
    move-object/from16 v2, v17

    #@25c
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    #@25f
    .line 269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@262
    .line 270
    const/4 v3, 0x1

    #@263
    return v3

    #@264
    .line 259
    :cond_8
    const/16 v16, 0x0

    #@266
    .local v16, "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    #@267
    .line 266
    .end local v16    # "_arg0":Landroid/content/ComponentName;
    :cond_9
    const/16 v17, 0x0

    #@269
    .local v17, "_arg1":Landroid/widget/RemoteViews;
    goto :goto_9

    #@26a
    .line 274
    .end local v17    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_f
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@26d
    move-object/from16 v0, p2

    #@26f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@272
    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@275
    move-result-object v10

    #@276
    .line 278
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@279
    move-result-object v18

    #@27a
    .line 280
    .restart local v18    # "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27d
    move-result v6

    #@27e
    .line 281
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    #@280
    move-object/from16 v1, v18

    #@282
    invoke-virtual {v0, v10, v1, v6}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V

    #@285
    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@288
    .line 283
    const/4 v3, 0x1

    #@289
    return v3

    #@28a
    .line 287
    .end local v6    # "_arg2":I
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":[I
    :sswitch_10
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@28d
    move-object/from16 v0, p2

    #@28f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@292
    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@295
    move-result v15

    #@296
    .line 291
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@299
    move-result v11

    #@29a
    .line 292
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    #@29c
    invoke-virtual {v0, v15, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getInstalledProvidersForProfile(II)Landroid/content/pm/ParceledListSlice;

    #@29f
    move-result-object v28

    #@2a0
    .line 293
    .restart local v28    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a3
    .line 294
    if-eqz v28, :cond_a

    #@2a5
    .line 295
    const/4 v3, 0x1

    #@2a6
    move-object/from16 v0, p3

    #@2a8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2ab
    .line 296
    const/4 v3, 0x1

    #@2ac
    move-object/from16 v0, v28

    #@2ae
    move-object/from16 v1, p3

    #@2b0
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b3
    .line 301
    :goto_a
    const/4 v3, 0x1

    #@2b4
    return v3

    #@2b5
    .line 299
    :cond_a
    const/4 v3, 0x0

    #@2b6
    move-object/from16 v0, p3

    #@2b8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2bb
    goto :goto_a

    #@2bc
    .line 305
    .end local v11    # "_arg1":I
    .end local v15    # "_arg0":I
    .end local v28    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_11
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@2bf
    move-object/from16 v0, p2

    #@2c1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c4
    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c7
    move-result-object v10

    #@2c8
    .line 309
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cb
    move-result v11

    #@2cc
    .line 310
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    #@2ce
    invoke-virtual {v0, v10, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;

    #@2d1
    move-result-object v26

    #@2d2
    .line 311
    .local v26, "_result":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d5
    .line 312
    if-eqz v26, :cond_b

    #@2d7
    .line 313
    const/4 v3, 0x1

    #@2d8
    move-object/from16 v0, p3

    #@2da
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2dd
    .line 314
    const/4 v3, 0x1

    #@2de
    move-object/from16 v0, v26

    #@2e0
    move-object/from16 v1, p3

    #@2e2
    invoke-virtual {v0, v1, v3}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e5
    .line 319
    :goto_b
    const/4 v3, 0x1

    #@2e6
    return v3

    #@2e7
    .line 317
    :cond_b
    const/4 v3, 0x0

    #@2e8
    move-object/from16 v0, p3

    #@2ea
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2ed
    goto :goto_b

    #@2ee
    .line 323
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v26    # "_result":Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_12
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@2f1
    move-object/from16 v0, p2

    #@2f3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f6
    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f9
    move-result-object v10

    #@2fa
    .line 327
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2fd
    move-result v11

    #@2fe
    .line 328
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    #@300
    invoke-virtual {v0, v10, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    #@303
    move-result v31

    #@304
    .line 329
    .local v31, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@307
    .line 330
    if-eqz v31, :cond_c

    #@309
    const/4 v3, 0x1

    #@30a
    :goto_c
    move-object/from16 v0, p3

    #@30c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@30f
    .line 331
    const/4 v3, 0x1

    #@310
    return v3

    #@311
    .line 330
    :cond_c
    const/4 v3, 0x0

    #@312
    goto :goto_c

    #@313
    .line 335
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v31    # "_result":Z
    :sswitch_13
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@316
    move-object/from16 v0, p2

    #@318
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31b
    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31e
    move-result-object v10

    #@31f
    .line 339
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@322
    move-result v11

    #@323
    .line 341
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@326
    move-result v3

    #@327
    if-eqz v3, :cond_d

    #@329
    const/16 v22, 0x1

    #@32b
    .line 342
    .local v22, "_arg2":Z
    :goto_d
    move-object/from16 v0, p0

    #@32d
    move/from16 v1, v22

    #@32f
    invoke-virtual {v0, v10, v11, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V

    #@332
    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@335
    .line 344
    const/4 v3, 0x1

    #@336
    return v3

    #@337
    .line 341
    .end local v22    # "_arg2":Z
    :cond_d
    const/16 v22, 0x0

    #@339
    goto :goto_d

    #@33a
    .line 348
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    :sswitch_14
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@33d
    move-object/from16 v0, p2

    #@33f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@342
    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@345
    move-result-object v10

    #@346
    .line 352
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@349
    move-result v11

    #@34a
    .line 354
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@34d
    move-result v6

    #@34e
    .line 356
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@351
    move-result v3

    #@352
    if-eqz v3, :cond_e

    #@354
    .line 357
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@356
    move-object/from16 v0, p2

    #@358
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@35b
    move-result-object v13

    #@35c
    check-cast v13, Landroid/content/ComponentName;

    #@35e
    .line 363
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@361
    move-result v3

    #@362
    if-eqz v3, :cond_f

    #@364
    .line 364
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@366
    move-object/from16 v0, p2

    #@368
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36b
    move-result-object v14

    #@36c
    check-cast v14, Landroid/os/Bundle;

    #@36e
    :goto_f
    move-object/from16 v9, p0

    #@370
    move v12, v6

    #@371
    .line 369
    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    #@374
    move-result v31

    #@375
    .line 370
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@378
    .line 371
    if-eqz v31, :cond_10

    #@37a
    const/4 v3, 0x1

    #@37b
    :goto_10
    move-object/from16 v0, p3

    #@37d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@380
    .line 372
    const/4 v3, 0x1

    #@381
    return v3

    #@382
    .line 360
    .end local v31    # "_result":Z
    :cond_e
    const/4 v13, 0x0

    #@383
    .local v13, "_arg3":Landroid/content/ComponentName;
    goto :goto_e

    #@384
    .line 367
    .end local v13    # "_arg3":Landroid/content/ComponentName;
    :cond_f
    const/4 v14, 0x0

    #@385
    .local v14, "_arg4":Landroid/os/Bundle;
    goto :goto_f

    #@386
    .line 371
    .end local v14    # "_arg4":Landroid/os/Bundle;
    .restart local v31    # "_result":Z
    :cond_10
    const/4 v3, 0x0

    #@387
    goto :goto_10

    #@388
    .line 376
    .end local v6    # "_arg2":I
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v31    # "_result":Z
    :sswitch_15
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@38b
    move-object/from16 v0, p2

    #@38d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@390
    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@393
    move-result-object v10

    #@394
    .line 380
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@397
    move-result v11

    #@398
    .line 382
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39b
    move-result v3

    #@39c
    if-eqz v3, :cond_11

    #@39e
    .line 383
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a0
    move-object/from16 v0, p2

    #@3a2
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3a5
    move-result-object v19

    #@3a6
    check-cast v19, Landroid/content/Intent;

    #@3a8
    .line 389
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3ab
    move-result-object v23

    #@3ac
    .line 390
    .local v23, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@3ae
    move-object/from16 v1, v19

    #@3b0
    move-object/from16 v2, v23

    #@3b2
    invoke-virtual {v0, v10, v11, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    #@3b5
    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b8
    .line 392
    const/4 v3, 0x1

    #@3b9
    return v3

    #@3ba
    .line 386
    .end local v23    # "_arg3":Landroid/os/IBinder;
    :cond_11
    const/16 v19, 0x0

    #@3bc
    .local v19, "_arg2":Landroid/content/Intent;
    goto :goto_11

    #@3bd
    .line 396
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v19    # "_arg2":Landroid/content/Intent;
    :sswitch_16
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@3c0
    move-object/from16 v0, p2

    #@3c2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c5
    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c8
    move-result-object v10

    #@3c9
    .line 400
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3cc
    move-result v11

    #@3cd
    .line 402
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d0
    move-result v3

    #@3d1
    if-eqz v3, :cond_12

    #@3d3
    .line 403
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d5
    move-object/from16 v0, p2

    #@3d7
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3da
    move-result-object v19

    #@3db
    check-cast v19, Landroid/content/Intent;

    #@3dd
    .line 408
    :goto_12
    move-object/from16 v0, p0

    #@3df
    move-object/from16 v1, v19

    #@3e1
    invoke-virtual {v0, v10, v11, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    #@3e4
    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e7
    .line 410
    const/4 v3, 0x1

    #@3e8
    return v3

    #@3e9
    .line 406
    :cond_12
    const/16 v19, 0x0

    #@3eb
    .restart local v19    # "_arg2":Landroid/content/Intent;
    goto :goto_12

    #@3ec
    .line 414
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v19    # "_arg2":Landroid/content/Intent;
    :sswitch_17
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@3ef
    move-object/from16 v0, p2

    #@3f1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f4
    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f7
    move-result v3

    #@3f8
    if-eqz v3, :cond_13

    #@3fa
    .line 417
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3fc
    move-object/from16 v0, p2

    #@3fe
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@401
    move-result-object v16

    #@402
    check-cast v16, Landroid/content/ComponentName;

    #@404
    .line 422
    :goto_13
    move-object/from16 v0, p0

    #@406
    move-object/from16 v1, v16

    #@408
    invoke-virtual {v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    #@40b
    move-result-object v32

    #@40c
    .line 423
    .restart local v32    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@40f
    .line 424
    move-object/from16 v0, p3

    #@411
    move-object/from16 v1, v32

    #@413
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@416
    .line 425
    const/4 v3, 0x1

    #@417
    return v3

    #@418
    .line 420
    .end local v32    # "_result":[I
    :cond_13
    const/16 v16, 0x0

    #@41a
    .restart local v16    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13

    #@41b
    .line 429
    .end local v16    # "_arg0":Landroid/content/ComponentName;
    :sswitch_18
    const-string/jumbo v3, "com.android.internal.appwidget.IAppWidgetService"

    #@41e
    move-object/from16 v0, p2

    #@420
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@423
    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@426
    move-result-object v10

    #@427
    .line 433
    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@42a
    move-result v11

    #@42b
    .line 434
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    #@42d
    invoke-virtual {v0, v10, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    #@430
    move-result v31

    #@431
    .line 435
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@434
    .line 436
    if-eqz v31, :cond_14

    #@436
    const/4 v3, 0x1

    #@437
    :goto_14
    move-object/from16 v0, p3

    #@439
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@43c
    .line 437
    const/4 v3, 0x1

    #@43d
    return v3

    #@43e
    .line 436
    :cond_14
    const/4 v3, 0x0

    #@43f
    goto :goto_14

    #@440
    .line 39
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
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
