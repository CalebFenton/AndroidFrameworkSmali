.class public abstract Lcom/android/internal/textservice/ITextServicesManager$Stub;
.super Landroid/os/Binder;
.source "ITextServicesManager.java"

# interfaces
.implements Lcom/android/internal/textservice/ITextServicesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ITextServicesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.textservice.ITextServicesManager"

.field static final TRANSACTION_finishSpellCheckerService:I = 0x4

.field static final TRANSACTION_getCurrentSpellChecker:I = 0x1

.field static final TRANSACTION_getCurrentSpellCheckerSubtype:I = 0x2

.field static final TRANSACTION_getEnabledSpellCheckers:I = 0x9

.field static final TRANSACTION_getSpellCheckerService:I = 0x3

.field static final TRANSACTION_isSpellCheckerEnabled:I = 0x8

.field static final TRANSACTION_setCurrentSpellChecker:I = 0x5

.field static final TRANSACTION_setCurrentSpellCheckerSubtype:I = 0x6

.field static final TRANSACTION_setSpellCheckerEnabled:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "com.android.internal.textservice.ITextServicesManager"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "com.android.internal.textservice.ITextServicesManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/textservice/ITextServicesManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Lcom/android/internal/textservice/ITextServicesManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 157
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v1, "com.android.internal.textservice.ITextServicesManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 51
    :sswitch_1
    const-string/jumbo v1, "com.android.internal.textservice.ITextServicesManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 54
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    #@21
    move-result-object v11

    #@22
    .line 55
    .local v11, "_result":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 56
    if-eqz v11, :cond_0

    #@27
    .line 57
    const/4 v1, 0x1

    #@28
    move-object/from16 v0, p3

    #@2a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 58
    const/4 v1, 0x1

    #@2e
    move-object/from16 v0, p3

    #@30
    invoke-virtual {v11, v0, v1}, Landroid/view/textservice/SpellCheckerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    .line 63
    :goto_0
    const/4 v1, 0x1

    #@34
    return v1

    #@35
    .line 61
    :cond_0
    const/4 v1, 0x0

    #@36
    move-object/from16 v0, p3

    #@38
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    goto :goto_0

    #@3c
    .line 67
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Landroid/view/textservice/SpellCheckerInfo;
    :sswitch_2
    const-string/jumbo v1, "com.android.internal.textservice.ITextServicesManager"

    #@3f
    move-object/from16 v0, p2

    #@41
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    .line 71
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_1

    #@4e
    const/4 v10, 0x1

    #@4f
    .line 72
    .local v10, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v2, v10}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;

    #@52
    move-result-object v12

    #@53
    .line 73
    .local v12, "_result":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@56
    .line 74
    if-eqz v12, :cond_2

    #@58
    .line 75
    const/4 v1, 0x1

    #@59
    move-object/from16 v0, p3

    #@5b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    .line 76
    const/4 v1, 0x1

    #@5f
    move-object/from16 v0, p3

    #@61
    invoke-virtual {v12, v0, v1}, Landroid/view/textservice/SpellCheckerSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    #@64
    .line 81
    :goto_2
    const/4 v1, 0x1

    #@65
    return v1

    #@66
    .line 71
    .end local v10    # "_arg1":Z
    .end local v12    # "_result":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_1
    const/4 v10, 0x0

    #@67
    .restart local v10    # "_arg1":Z
    goto :goto_1

    #@68
    .line 79
    .restart local v12    # "_result":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_2
    const/4 v1, 0x0

    #@69
    move-object/from16 v0, p3

    #@6b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    goto :goto_2

    #@6f
    .line 85
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Z
    .end local v12    # "_result":Landroid/view/textservice/SpellCheckerSubtype;
    :sswitch_3
    const-string/jumbo v1, "com.android.internal.textservice.ITextServicesManager"

    #@72
    move-object/from16 v0, p2

    #@74
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    .line 89
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    .line 91
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@82
    move-result-object v1

    #@83
    invoke-static {v1}, Lcom/android/internal/textservice/ITextServicesSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesSessionListener;

    #@86
    move-result-object v4

    #@87
    .line 93
    .local v4, "_arg2":Lcom/android/internal/textservice/ITextServicesSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8a
    move-result-object v1

    #@8b
    invoke-static {v1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@8e
    move-result-object v5

    #@8f
    .line 95
    .local v5, "_arg3":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92
    move-result v1

    #@93
    if-eqz v1, :cond_3

    #@95
    .line 96
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@97
    move-object/from16 v0, p2

    #@99
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9c
    move-result-object v6

    #@9d
    check-cast v6, Landroid/os/Bundle;

    #@9f
    :goto_3
    move-object v1, p0

    #@a0
    .line 101
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V

    #@a3
    .line 102
    const/4 v1, 0x1

    #@a4
    return v1

    #@a5
    .line 99
    :cond_3
    const/4 v6, 0x0

    #@a6
    .local v6, "_arg4":Landroid/os/Bundle;
    goto :goto_3

    #@a7
    .line 106
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/android/internal/textservice/ITextServicesSessionListener;
    .end local v5    # "_arg3":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .end local v6    # "_arg4":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v1, "com.android.internal.textservice.ITextServicesManager"

    #@aa
    move-object/from16 v0, p2

    #@ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b2
    move-result-object v1

    #@b3
    invoke-static {v1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@b6
    move-result-object v7

    #@b7
    .line 109
    .local v7, "_arg0":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    invoke-virtual {p0, v7}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    #@ba
    .line 110
    const/4 v1, 0x1

    #@bb
    return v1

    #@bc
    .line 114
    .end local v7    # "_arg0":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    :sswitch_5
    const-string/jumbo v1, "com.android.internal.textservice.ITextServicesManager"

    #@bf
    move-object/from16 v0, p2

    #@c1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c4
    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c7
    move-result-object v2

    #@c8
    .line 118
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cb
    move-result-object v3

    #@cc
    .line 119
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->setCurrentSpellChecker(Ljava/lang/String;Ljava/lang/String;)V

    #@cf
    .line 120
    const/4 v1, 0x1

    #@d0
    return v1

    #@d1
    .line 124
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v1, "com.android.internal.textservice.ITextServicesManager"

    #@d4
    move-object/from16 v0, p2

    #@d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@dc
    move-result-object v2

    #@dd
    .line 128
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e0
    move-result v9

    #@e1
    .line 129
    .local v9, "_arg1":I
    invoke-virtual {p0, v2, v9}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->setCurrentSpellCheckerSubtype(Ljava/lang/String;I)V

    #@e4
    .line 130
    const/4 v1, 0x1

    #@e5
    return v1

    #@e6
    .line 134
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    :sswitch_7
    const-string/jumbo v1, "com.android.internal.textservice.ITextServicesManager"

    #@e9
    move-object/from16 v0, p2

    #@eb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ee
    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f1
    move-result v1

    #@f2
    if-eqz v1, :cond_4

    #@f4
    const/4 v8, 0x1

    #@f5
    .line 137
    .local v8, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v8}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->setSpellCheckerEnabled(Z)V

    #@f8
    .line 138
    const/4 v1, 0x1

    #@f9
    return v1

    #@fa
    .line 136
    .end local v8    # "_arg0":Z
    :cond_4
    const/4 v8, 0x0

    #@fb
    .restart local v8    # "_arg0":Z
    goto :goto_4

    #@fc
    .line 142
    .end local v8    # "_arg0":Z
    :sswitch_8
    const-string/jumbo v1, "com.android.internal.textservice.ITextServicesManager"

    #@ff
    move-object/from16 v0, p2

    #@101
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@104
    .line 143
    invoke-virtual {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->isSpellCheckerEnabled()Z

    #@107
    move-result v13

    #@108
    .line 144
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10b
    .line 145
    if-eqz v13, :cond_5

    #@10d
    const/4 v1, 0x1

    #@10e
    :goto_5
    move-object/from16 v0, p3

    #@110
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@113
    .line 146
    const/4 v1, 0x1

    #@114
    return v1

    #@115
    .line 145
    :cond_5
    const/4 v1, 0x0

    #@116
    goto :goto_5

    #@117
    .line 150
    .end local v13    # "_result":Z
    :sswitch_9
    const-string/jumbo v1, "com.android.internal.textservice.ITextServicesManager"

    #@11a
    move-object/from16 v0, p2

    #@11c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f
    .line 151
    invoke-virtual {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    #@122
    move-result-object v14

    #@123
    .line 152
    .local v14, "_result":[Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@126
    .line 153
    const/4 v1, 0x1

    #@127
    move-object/from16 v0, p3

    #@129
    invoke-virtual {v0, v14, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@12c
    .line 154
    const/4 v1, 0x1

    #@12d
    return v1

    #@12e
    .line 42
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
