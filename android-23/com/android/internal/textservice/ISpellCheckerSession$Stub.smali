.class public abstract Lcom/android/internal/textservice/ISpellCheckerSession$Stub;
.super Landroid/os/Binder;
.source "ISpellCheckerSession.java"

# interfaces
.implements Lcom/android/internal/textservice/ISpellCheckerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ISpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.textservice.ISpellCheckerSession"

.field static final TRANSACTION_onCancel:I = 0x3

.field static final TRANSACTION_onClose:I = 0x4

.field static final TRANSACTION_onGetSentenceSuggestionsMultiple:I = 0x2

.field static final TRANSACTION_onGetSuggestionsMultiple:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "com.android.internal.textservice.ISpellCheckerSession"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "com.android.internal.textservice.ISpellCheckerSession"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/textservice/ISpellCheckerSession;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Lcom/android/internal/textservice/ISpellCheckerSession;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v4, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v3, "com.android.internal.textservice.ISpellCheckerSession"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v4

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v3, "com.android.internal.textservice.ISpellCheckerSession"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    sget-object v3, Landroid/view/textservice/TextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, [Landroid/view/textservice/TextInfo;

    #@1e
    .line 54
    .local v0, "_arg0":[Landroid/view/textservice/TextInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v1

    #@22
    .line 56
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    const/4 v2, 0x1

    #@29
    .line 57
    .local v2, "_arg2":Z
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V

    #@2c
    .line 58
    return v4

    #@2d
    .line 56
    .end local v2    # "_arg2":Z
    :cond_0
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "_arg2":Z
    goto :goto_0

    #@2f
    .line 62
    .end local v0    # "_arg0":[Landroid/view/textservice/TextInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :sswitch_2
    const-string/jumbo v3, "com.android.internal.textservice.ISpellCheckerSession"

    #@32
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 64
    sget-object v3, Landroid/view/textservice/TextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, [Landroid/view/textservice/TextInfo;

    #@3d
    .line 66
    .restart local v0    # "_arg0":[Landroid/view/textservice/TextInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v1

    #@41
    .line 67
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V

    #@44
    .line 68
    return v4

    #@45
    .line 72
    .end local v0    # "_arg0":[Landroid/view/textservice/TextInfo;
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string/jumbo v3, "com.android.internal.textservice.ISpellCheckerSession"

    #@48
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b
    .line 73
    invoke-virtual {p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->onCancel()V

    #@4e
    .line 74
    return v4

    #@4f
    .line 78
    :sswitch_4
    const-string/jumbo v3, "com.android.internal.textservice.ISpellCheckerSession"

    #@52
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55
    .line 79
    invoke-virtual {p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->onClose()V

    #@58
    .line 80
    return v4

    #@59
    .line 41
    nop

    #@5a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
