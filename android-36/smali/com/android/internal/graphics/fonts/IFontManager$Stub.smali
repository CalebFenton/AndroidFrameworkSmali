.class public abstract Lcom/android/internal/graphics/fonts/IFontManager$Stub;
.super Landroid/os/Binder;
.source "IFontManager.java"

# interfaces
.implements Lcom/android/internal/graphics/fonts/IFontManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/fonts/IFontManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/fonts/IFontManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFontConfig:I = 0x1

.field static final blacklist TRANSACTION_updateFontFamily:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    nop

    .line 50
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.android.internal.graphics.fonts.IFontManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    if-eqz p1, :cond_d

    .line 44
    iput-object p1, p0, Lcom/android/internal/graphics/fonts/IFontManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 45
    return-void

    .line 42
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/graphics/fonts/IFontManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "com.android.internal.graphics.fonts.IFontManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/graphics/fonts/IFontManager;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Lcom/android/internal/graphics/fonts/IFontManager;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Lcom/android/internal/graphics/fonts/IFontManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/graphics/fonts/IFontManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_c

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 82
    :pswitch_5
    const-string/jumbo v0, "updateFontFamily"

    return-object v0

    .line 78
    :pswitch_9
    const-string v0, "getFontConfig"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method protected blacklist getFontConfig_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/internal/graphics/fonts/IFontManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_FONTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 189
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 93
    invoke-static {p1}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const-string v0, "com.android.internal.graphics.fonts.IFontManager"

    .line 98
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 102
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v1

    .line 105
    :cond_16
    packed-switch p1, :pswitch_data_42

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 117
    :pswitch_1e
    sget-object v2, Landroid/graphics/fonts/FontUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 119
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 120
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;->updateFontFamily(Ljava/util/List;I)I

    move-result v4

    .line 122
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    goto :goto_41

    .line 109
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_36
    invoke-virtual {p0}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;->getFontConfig()Landroid/text/FontConfig;

    move-result-object v2

    .line 110
    .local v2, "_result":Landroid/text/FontConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 112
    nop

    .line 131
    .end local v2    # "_result":Landroid/text/FontConfig;
    :goto_41
    return v1

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_36
        :pswitch_1e
    .end packed-switch
.end method
