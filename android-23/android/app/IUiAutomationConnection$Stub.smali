.class public abstract Landroid/app/IUiAutomationConnection$Stub;
.super Landroid/os/Binder;
.source "IUiAutomationConnection.java"

# interfaces
.implements Landroid/app/IUiAutomationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiAutomationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiAutomationConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IUiAutomationConnection"

.field static final TRANSACTION_clearWindowAnimationFrameStats:I = 0x8

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x6

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_executeShellCommand:I = 0xa

.field static final TRANSACTION_getWindowAnimationFrameStats:I = 0x9

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x7

.field static final TRANSACTION_injectInputEvent:I = 0x3

.field static final TRANSACTION_setRotation:I = 0x4

.field static final TRANSACTION_shutdown:I = 0xb

.field static final TRANSACTION_takeScreenshot:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 24
    const-string/jumbo v0, "android.app.IUiAutomationConnection"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/IUiAutomationConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 32
    if-nez p0, :cond_0

    #@3
    .line 33
    return-object v1

    #@4
    .line 35
    :cond_0
    const-string/jumbo v1, "android.app.IUiAutomationConnection"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/IUiAutomationConnection;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 37
    check-cast v0, Landroid/app/IUiAutomationConnection;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 39
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IUiAutomationConnection$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/IUiAutomationConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 47
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 185
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v11

    #@7
    return v11

    #@8
    .line 51
    :sswitch_0
    const-string/jumbo v11, "android.app.IUiAutomationConnection"

    #@b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 52
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 56
    :sswitch_1
    const-string/jumbo v11, "android.app.IUiAutomationConnection"

    #@13
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v11

    #@1a
    invoke-static {v11}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@1d
    move-result-object v1

    #@1e
    .line 59
    .local v1, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual {p0, v1}, Landroid/app/IUiAutomationConnection$Stub;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    #@21
    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    .line 61
    const/4 v11, 0x1

    #@25
    return v11

    #@26
    .line 65
    .end local v1    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :sswitch_2
    const-string/jumbo v11, "android.app.IUiAutomationConnection"

    #@29
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    .line 66
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->disconnect()V

    #@2f
    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@32
    .line 68
    const/4 v11, 0x1

    #@33
    return v11

    #@34
    .line 72
    :sswitch_3
    const-string/jumbo v11, "android.app.IUiAutomationConnection"

    #@37
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v11

    #@3e
    if-eqz v11, :cond_0

    #@40
    .line 75
    sget-object v11, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@42
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@45
    move-result-object v2

    #@46
    check-cast v2, Landroid/view/InputEvent;

    #@48
    .line 81
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v11

    #@4c
    if-eqz v11, :cond_1

    #@4e
    const/4 v6, 0x1

    #@4f
    .line 82
    .local v6, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v2, v6}, Landroid/app/IUiAutomationConnection$Stub;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    #@52
    move-result v10

    #@53
    .line 83
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@56
    .line 84
    if-eqz v10, :cond_2

    #@58
    const/4 v11, 0x1

    #@59
    :goto_2
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 85
    const/4 v11, 0x1

    #@5d
    return v11

    #@5e
    .line 78
    .end local v6    # "_arg1":Z
    .end local v10    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@5f
    .local v2, "_arg0":Landroid/view/InputEvent;
    goto :goto_0

    #@60
    .line 81
    .end local v2    # "_arg0":Landroid/view/InputEvent;
    :cond_1
    const/4 v6, 0x0

    #@61
    .restart local v6    # "_arg1":Z
    goto :goto_1

    #@62
    .line 84
    .restart local v10    # "_result":Z
    :cond_2
    const/4 v11, 0x0

    #@63
    goto :goto_2

    #@64
    .line 89
    .end local v6    # "_arg1":Z
    .end local v10    # "_result":Z
    :sswitch_4
    const-string/jumbo v11, "android.app.IUiAutomationConnection"

    #@67
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a
    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v0

    #@6e
    .line 92
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IUiAutomationConnection$Stub;->setRotation(I)Z

    #@71
    move-result v10

    #@72
    .line 93
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    .line 94
    if-eqz v10, :cond_3

    #@77
    const/4 v11, 0x1

    #@78
    :goto_3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@7b
    .line 95
    const/4 v11, 0x1

    #@7c
    return v11

    #@7d
    .line 94
    :cond_3
    const/4 v11, 0x0

    #@7e
    goto :goto_3

    #@7f
    .line 99
    .end local v0    # "_arg0":I
    .end local v10    # "_result":Z
    :sswitch_5
    const-string/jumbo v11, "android.app.IUiAutomationConnection"

    #@82
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85
    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@88
    move-result v0

    #@89
    .line 103
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v4

    #@8d
    .line 104
    .local v4, "_arg1":I
    invoke-virtual {p0, v0, v4}, Landroid/app/IUiAutomationConnection$Stub;->takeScreenshot(II)Landroid/graphics/Bitmap;

    #@90
    move-result-object v7

    #@91
    .line 105
    .local v7, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@94
    .line 106
    if-eqz v7, :cond_4

    #@96
    .line 107
    const/4 v11, 0x1

    #@97
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@9a
    .line 108
    const/4 v11, 0x1

    #@9b
    invoke-virtual {v7, p3, v11}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@9e
    .line 113
    :goto_4
    const/4 v11, 0x1

    #@9f
    return v11

    #@a0
    .line 111
    :cond_4
    const/4 v11, 0x0

    #@a1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@a4
    goto :goto_4

    #@a5
    .line 117
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v7    # "_result":Landroid/graphics/Bitmap;
    :sswitch_6
    const-string/jumbo v11, "android.app.IUiAutomationConnection"

    #@a8
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab
    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ae
    move-result v0

    #@af
    .line 120
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IUiAutomationConnection$Stub;->clearWindowContentFrameStats(I)Z

    #@b2
    move-result v10

    #@b3
    .line 121
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    .line 122
    if-eqz v10, :cond_5

    #@b8
    const/4 v11, 0x1

    #@b9
    :goto_5
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@bc
    .line 123
    const/4 v11, 0x1

    #@bd
    return v11

    #@be
    .line 122
    :cond_5
    const/4 v11, 0x0

    #@bf
    goto :goto_5

    #@c0
    .line 127
    .end local v0    # "_arg0":I
    .end local v10    # "_result":Z
    :sswitch_7
    const-string/jumbo v11, "android.app.IUiAutomationConnection"

    #@c3
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c6
    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c9
    move-result v0

    #@ca
    .line 130
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IUiAutomationConnection$Stub;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;

    #@cd
    move-result-object v9

    #@ce
    .line 131
    .local v9, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d1
    .line 132
    if-eqz v9, :cond_6

    #@d3
    .line 133
    const/4 v11, 0x1

    #@d4
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@d7
    .line 134
    const/4 v11, 0x1

    #@d8
    invoke-virtual {v9, p3, v11}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@db
    .line 139
    :goto_6
    const/4 v11, 0x1

    #@dc
    return v11

    #@dd
    .line 137
    :cond_6
    const/4 v11, 0x0

    #@de
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@e1
    goto :goto_6

    #@e2
    .line 143
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Landroid/view/WindowContentFrameStats;
    :sswitch_8
    const-string/jumbo v11, "android.app.IUiAutomationConnection"

    #@e5
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e8
    .line 144
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->clearWindowAnimationFrameStats()V

    #@eb
    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee
    .line 146
    const/4 v11, 0x1

    #@ef
    return v11

    #@f0
    .line 150
    :sswitch_9
    const-string/jumbo v11, "android.app.IUiAutomationConnection"

    #@f3
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f6
    .line 151
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;

    #@f9
    move-result-object v8

    #@fa
    .line 152
    .local v8, "_result":Landroid/view/WindowAnimationFrameStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@fd
    .line 153
    if-eqz v8, :cond_7

    #@ff
    .line 154
    const/4 v11, 0x1

    #@100
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@103
    .line 155
    const/4 v11, 0x1

    #@104
    invoke-virtual {v8, p3, v11}, Landroid/view/WindowAnimationFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@107
    .line 160
    :goto_7
    const/4 v11, 0x1

    #@108
    return v11

    #@109
    .line 158
    :cond_7
    const/4 v11, 0x0

    #@10a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@10d
    goto :goto_7

    #@10e
    .line 164
    .end local v8    # "_result":Landroid/view/WindowAnimationFrameStats;
    :sswitch_a
    const-string/jumbo v11, "android.app.IUiAutomationConnection"

    #@111
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@114
    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@117
    move-result-object v3

    #@118
    .line 168
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11b
    move-result v11

    #@11c
    if-eqz v11, :cond_8

    #@11e
    .line 169
    sget-object v11, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@120
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@123
    move-result-object v5

    #@124
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    #@126
    .line 174
    :goto_8
    invoke-virtual {p0, v3, v5}, Landroid/app/IUiAutomationConnection$Stub;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    #@129
    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@12c
    .line 176
    const/4 v11, 0x1

    #@12d
    return v11

    #@12e
    .line 172
    :cond_8
    const/4 v5, 0x0

    #@12f
    .local v5, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    #@130
    .line 180
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_b
    const-string/jumbo v11, "android.app.IUiAutomationConnection"

    #@133
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@136
    .line 181
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->shutdown()V

    #@139
    .line 182
    const/4 v11, 0x1

    #@13a
    return v11

    #@13b
    .line 47
    nop

    #@13c
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
