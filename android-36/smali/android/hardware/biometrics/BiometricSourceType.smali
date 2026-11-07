.class public final enum Landroid/hardware/biometrics/BiometricSourceType;
.super Ljava/lang/Enum;
.source "BiometricSourceType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/biometrics/BiometricSourceType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/hardware/biometrics/BiometricSourceType;

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/BiometricSourceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum blacklist FACE:Landroid/hardware/biometrics/BiometricSourceType;

.field public static final enum blacklist FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

.field public static final enum blacklist IRIS:Landroid/hardware/biometrics/BiometricSourceType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/hardware/biometrics/BiometricSourceType;
    .registers 3

    .line 25
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    filled-new-array {v0, v1, v2}, [Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Landroid/hardware/biometrics/BiometricSourceType;

    const-string v1, "FINGERPRINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/biometrics/BiometricSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 27
    new-instance v0, Landroid/hardware/biometrics/BiometricSourceType;

    const-string v1, "FACE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/biometrics/BiometricSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 28
    new-instance v0, Landroid/hardware/biometrics/BiometricSourceType;

    const-string v1, "IRIS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/hardware/biometrics/BiometricSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    .line 25
    invoke-static {}, Landroid/hardware/biometrics/BiometricSourceType;->$values()[Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v0

    sput-object v0, Landroid/hardware/biometrics/BiometricSourceType;->$VALUES:[Landroid/hardware/biometrics/BiometricSourceType;

    .line 40
    new-instance v0, Landroid/hardware/biometrics/BiometricSourceType$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/BiometricSourceType$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/hardware/biometrics/BiometricSourceType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    const-class v0, Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricSourceType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/hardware/biometrics/BiometricSourceType;
    .registers 1

    .line 25
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->$VALUES:[Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0}, [Landroid/hardware/biometrics/BiometricSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/biometrics/BiometricSourceType;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 37
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricSourceType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    return-void
.end method
