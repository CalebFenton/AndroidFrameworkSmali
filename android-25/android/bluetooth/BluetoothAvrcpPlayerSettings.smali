.class public final Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
.super Ljava/lang/Object;
.source "BluetoothAvrcpPlayerSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAvrcpPlayerSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothAvrcpPlayerSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTING_EQUALIZER:I = 0x1

.field public static final SETTING_REPEAT:I = 0x2

.field public static final SETTING_SCAN:I = 0x8

.field public static final SETTING_SHUFFLE:I = 0x4

.field public static final STATE_ALL_TRACK:I = 0x3

.field public static final STATE_GROUP:I = 0x4

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_OFF:I = 0x0

.field public static final STATE_ON:I = 0x1

.field public static final STATE_SINGLE_TRACK:I = 0x2

.field public static final TAG:Ljava/lang/String; = "BluetoothAvrcpPlayerSettings"


# instance fields
.field private mSettings:I

.field private mSettingsValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 120
    new-instance v0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings$1;-><init>()V

    #@5
    .line 119
    sput-object v0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "settings"    # I

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 104
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    #@a
    .line 144
    iput p1, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    #@c
    .line 143
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 104
    new-instance v2, Ljava/util/HashMap;

    #@5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    #@a
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v2

    #@e
    iput v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    #@10
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    .line 133
    .local v1, "numSettings":I
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@17
    .line 134
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    #@19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v4

    #@25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v4

    #@29
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 133
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 130
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public addSettingValue(II)V
    .locals 3
    .param p1, "setting"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 165
    iget v0, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    #@2
    and-int/2addr v0, p1

    #@3
    if-nez v0, :cond_0

    #@5
    .line 166
    const-string/jumbo v0, "BluetoothAvrcpPlayerSettings"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Setting not supported: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "Setting not supported: "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    .line 169
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    #@48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v1

    #@4c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v2

    #@50
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 164
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 107
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getSettingValue(I)I
    .locals 4
    .param p1, "setting"    # I

    #@0
    .prologue
    .line 181
    iget v1, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    #@2
    and-int/2addr v1, p1

    #@3
    if-nez v1, :cond_0

    #@5
    .line 182
    const-string/jumbo v1, "BluetoothAvrcpPlayerSettings"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Setting not supported: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, " "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget v3, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 183
    new-instance v1, Ljava/lang/IllegalStateException;

    #@2e
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "Setting not supported: "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@45
    throw v1

    #@46
    .line 185
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    #@48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v2

    #@4c
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Ljava/lang/Integer;

    #@52
    .line 186
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@54
    const/4 v1, -0x1

    #@55
    return v1

    #@56
    .line 187
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@59
    move-result v1

    #@5a
    return v1
.end method

.method public getSettings()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 111
    iget v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettings:I

    #@2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 112
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    #@7
    invoke-interface {v2}, Ljava/util/Map;->size()I

    #@a
    move-result v2

    #@b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 113
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    #@10
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Ljava/lang/Integer;

    #@24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@27
    move-result v0

    #@28
    .line 114
    .local v0, "k":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 115
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;->mSettingsValue:Ljava/util/Map;

    #@2d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v3

    #@31
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Ljava/lang/Integer;

    #@37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@3a
    move-result v2

    #@3b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    goto :goto_0

    #@3f
    .line 110
    .end local v0    # "k":I
    :cond_0
    return-void
.end method
