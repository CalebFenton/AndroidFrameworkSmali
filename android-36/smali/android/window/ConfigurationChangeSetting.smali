.class public abstract Landroid/window/ConfigurationChangeSetting;
.super Ljava/lang/Object;
.source "ConfigurationChangeSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ConfigurationChangeSetting$CreatorImpl;,
        Landroid/window/ConfigurationChangeSetting$FontScaleSetting;,
        Landroid/window/ConfigurationChangeSetting$DensitySetting;,
        Landroid/window/ConfigurationChangeSetting$ConfigurationChangeSettingInternal;,
        Landroid/window/ConfigurationChangeSetting$SettingType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ConfigurationChangeSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SETTING_TYPE_DISPLAY_DENSITY:I = 0x0

.field public static final blacklist SETTING_TYPE_FONT_SCALE:I = 0x1

.field public static final blacklist SETTING_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mSettingType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 79
    new-instance v0, Landroid/window/ConfigurationChangeSetting$CreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/ConfigurationChangeSetting$CreatorImpl;-><init>(Landroid/window/ConfigurationChangeSetting-IA;)V

    sput-object v0, Landroid/window/ConfigurationChangeSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 4
    .param p1, "settingType"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->condenseConfigurationChangeForSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 70
    iput p1, p0, Landroid/window/ConfigurationChangeSetting;->mSettingType:I

    .line 71
    return-void

    .line 65
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ConfigurationChangeSetting cannot be instantiated because the condenseConfigurationChangeForSimpleMode flag is not enabled. Please ensure this flag is enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(ILandroid/window/ConfigurationChangeSetting-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ConfigurationChangeSetting;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist apply(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 144
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget v0, p0, Landroid/window/ConfigurationChangeSetting;->mSettingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
