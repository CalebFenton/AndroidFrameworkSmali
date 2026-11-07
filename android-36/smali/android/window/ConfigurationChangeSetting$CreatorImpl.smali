.class public Landroid/window/ConfigurationChangeSetting$CreatorImpl;
.super Ljava/lang/Object;
.source "ConfigurationChangeSetting.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ConfigurationChangeSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreatorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/ConfigurationChangeSetting;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mIsSystem:Z


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 94
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/window/ConfigurationChangeSetting$CreatorImpl;-><init>(Z)V

    .line 95
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/ConfigurationChangeSetting-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/window/ConfigurationChangeSetting$CreatorImpl;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "isSystem"    # Z

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean p1, p0, Landroid/window/ConfigurationChangeSetting$CreatorImpl;->mIsSystem:Z

    .line 100
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/window/ConfigurationChangeSetting;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .local v0, "settingType":I
    iget-boolean v1, p0, Landroid/window/ConfigurationChangeSetting$CreatorImpl;->mIsSystem:Z

    if-eqz v1, :cond_15

    .line 106
    const-class v1, Landroid/window/ConfigurationChangeSetting$ConfigurationChangeSettingInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ConfigurationChangeSetting$ConfigurationChangeSettingInternal;

    .line 107
    invoke-interface {v1, v0, p1}, Landroid/window/ConfigurationChangeSetting$ConfigurationChangeSettingInternal;->createImplFromParcel(ILandroid/os/Parcel;)Landroid/window/ConfigurationChangeSetting;

    move-result-object v1

    .line 106
    return-object v1

    .line 109
    :cond_15
    packed-switch v0, :pswitch_data_44

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown setting type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :pswitch_31
    sget-object v1, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ConfigurationChangeSetting;

    return-object v1

    .line 111
    :pswitch_3a
    sget-object v1, Landroid/window/ConfigurationChangeSetting$DensitySetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ConfigurationChangeSetting;

    return-object v1

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_31
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Landroid/window/ConfigurationChangeSetting$CreatorImpl;->createFromParcel(Landroid/os/Parcel;)Landroid/window/ConfigurationChangeSetting;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/window/ConfigurationChangeSetting;
    .registers 3
    .param p1, "size"    # I

    .line 121
    new-array v0, p1, [Landroid/window/ConfigurationChangeSetting;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Landroid/window/ConfigurationChangeSetting$CreatorImpl;->newArray(I)[Landroid/window/ConfigurationChangeSetting;

    move-result-object p1

    return-object p1
.end method
