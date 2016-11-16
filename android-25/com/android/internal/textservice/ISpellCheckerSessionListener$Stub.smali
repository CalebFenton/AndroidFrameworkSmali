.class public abstract Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;
.super Landroid/os/Binder;
.source "ISpellCheckerSessionListener.java"

# interfaces
.implements Lcom/android/internal/textservice/ISpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ISpellCheckerSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.textservice.ISpellCheckerSessionListener"

.field static final TRANSACTION_onGetSentenceSuggestions:I = 0x2

.field static final TRANSACTION_onGetSuggestions:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "com.android.internal.textservice.ISpellCheckerSessionListener"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSessionListener;
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
    const-string/jumbo v1, "com.android.internal.textservice.ISpellCheckerSessionListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v3, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v2, "com.android.internal.textservice.ISpellCheckerSessionListener"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v3

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v2, "com.android.internal.textservice.ISpellCheckerSessionListener"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    sget-object v2, Landroid/view/textservice/SuggestionsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, [Landroid/view/textservice/SuggestionsInfo;

    #@1e
    .line 53
    .local v1, "_arg0":[Landroid/view/textservice/SuggestionsInfo;
    invoke-virtual {p0, v1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V

    #@21
    .line 54
    return v3

    #@22
    .line 58
    .end local v1    # "_arg0":[Landroid/view/textservice/SuggestionsInfo;
    :sswitch_2
    const-string/jumbo v2, "com.android.internal.textservice.ISpellCheckerSessionListener"

    #@25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 60
    sget-object v2, Landroid/view/textservice/SentenceSuggestionsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, [Landroid/view/textservice/SentenceSuggestionsInfo;

    #@30
    .line 61
    .local v0, "_arg0":[Landroid/view/textservice/SentenceSuggestionsInfo;
    invoke-virtual {p0, v0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    #@33
    .line 62
    return v3

    #@34
    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
