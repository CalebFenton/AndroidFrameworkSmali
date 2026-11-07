.class Landroid/security/advancedprotection/AdvancedProtectionFeature$1;
.super Ljava/lang/Object;
.source "AdvancedProtectionFeature.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/advancedprotection/AdvancedProtectionFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/advancedprotection/AdvancedProtectionFeature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/security/advancedprotection/AdvancedProtectionFeature;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(Landroid/os/Parcel;Landroid/security/advancedprotection/AdvancedProtectionFeature-IA;)V

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

    .line 67
    invoke-virtual {p0, p1}, Landroid/security/advancedprotection/AdvancedProtectionFeature$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/advancedprotection/AdvancedProtectionFeature;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/security/advancedprotection/AdvancedProtectionFeature;
    .registers 3
    .param p1, "size"    # I

    .line 73
    new-array v0, p1, [Landroid/security/advancedprotection/AdvancedProtectionFeature;

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

    .line 67
    invoke-virtual {p0, p1}, Landroid/security/advancedprotection/AdvancedProtectionFeature$1;->newArray(I)[Landroid/security/advancedprotection/AdvancedProtectionFeature;

    move-result-object p1

    return-object p1
.end method
