.class Landroid/hardware/security/keymint/KeyParameterValue$1;
.super Ljava/lang/Object;
.source "KeyParameterValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/KeyParameterValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/security/keymint/KeyParameterValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 4
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 284
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(Landroid/os/Parcel;Landroid/hardware/security/keymint/KeyParameterValue-IA;)V

    return-object v0
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

    .line 281
    invoke-virtual {p0, p1}, Landroid/hardware/security/keymint/KeyParameterValue$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 288
    new-array v0, p1, [Landroid/hardware/security/keymint/KeyParameterValue;

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

    .line 281
    invoke-virtual {p0, p1}, Landroid/hardware/security/keymint/KeyParameterValue$1;->newArray(I)[Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p1

    return-object p1
.end method
