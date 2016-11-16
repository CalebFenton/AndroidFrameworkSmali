.class public abstract Landroid/view/IDockedStackListener$Stub;
.super Landroid/os/Binder;
.source "IDockedStackListener.java"

# interfaces
.implements Landroid/view/IDockedStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDockedStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDockedStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IDockedStackListener"

.field static final TRANSACTION_onAdjustedForImeChanged:I = 0x4

.field static final TRANSACTION_onDividerVisibilityChanged:I = 0x1

.field static final TRANSACTION_onDockSideChanged:I = 0x5

.field static final TRANSACTION_onDockedStackExistsChanged:I = 0x2

.field static final TRANSACTION_onDockedStackMinimizedChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.view.IDockedStackListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/view/IDockedStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IDockedStackListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "android.view.IDockedStackListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/view/IDockedStackListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/view/IDockedStackListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IDockedStackListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/view/IDockedStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v4

    #@9
    return v4

    #@a
    .line 48
    :sswitch_0
    const-string/jumbo v5, "android.view.IDockedStackListener"

    #@d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 49
    return v4

    #@11
    .line 53
    :sswitch_1
    const-string/jumbo v5, "android.view.IDockedStackListener"

    #@14
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_0

    #@1d
    move v1, v4

    #@1e
    .line 56
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/IDockedStackListener$Stub;->onDividerVisibilityChanged(Z)V

    #@21
    .line 57
    return v4

    #@22
    .line 61
    .end local v1    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v5, "android.view.IDockedStackListener"

    #@25
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_1

    #@2e
    move v1, v4

    #@2f
    .line 64
    .restart local v1    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/IDockedStackListener$Stub;->onDockedStackExistsChanged(Z)V

    #@32
    .line 65
    return v4

    #@33
    .line 69
    .end local v1    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v5, "android.view.IDockedStackListener"

    #@36
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_2

    #@3f
    const/4 v1, 0x1

    #@40
    .line 73
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@43
    move-result-wide v2

    #@44
    .line 74
    .local v2, "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IDockedStackListener$Stub;->onDockedStackMinimizedChanged(ZJ)V

    #@47
    .line 75
    return v4

    #@48
    .line 71
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":J
    :cond_2
    const/4 v1, 0x0

    #@49
    .restart local v1    # "_arg0":Z
    goto :goto_0

    #@4a
    .line 79
    .end local v1    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v5, "android.view.IDockedStackListener"

    #@4d
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_3

    #@56
    const/4 v1, 0x1

    #@57
    .line 83
    .restart local v1    # "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@5a
    move-result-wide v2

    #@5b
    .line 84
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IDockedStackListener$Stub;->onAdjustedForImeChanged(ZJ)V

    #@5e
    .line 85
    return v4

    #@5f
    .line 81
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":J
    :cond_3
    const/4 v1, 0x0

    #@60
    .restart local v1    # "_arg0":Z
    goto :goto_1

    #@61
    .line 89
    .end local v1    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v5, "android.view.IDockedStackListener"

    #@64
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67
    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6a
    move-result v0

    #@6b
    .line 92
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/IDockedStackListener$Stub;->onDockSideChanged(I)V

    #@6e
    .line 93
    return v4

    #@6f
    .line 44
    nop

    #@70
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
