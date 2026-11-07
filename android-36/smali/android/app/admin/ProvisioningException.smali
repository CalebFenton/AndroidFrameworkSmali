.class public Landroid/app/admin/ProvisioningException;
.super Landroid/util/AndroidException;
.source "ProvisioningException.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/ProvisioningException$ProvisioningError;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_ADMIN_PACKAGE_INSTALLATION_FAILED:I = 0x3

.field public static final whitelist ERROR_PRE_CONDITION_FAILED:I = 0x1

.field public static final whitelist ERROR_PROFILE_CREATION_FAILED:I = 0x2

.field public static final whitelist ERROR_REMOVE_NON_REQUIRED_APPS_FAILED:I = 0x6

.field public static final whitelist ERROR_SETTING_PROFILE_OWNER_FAILED:I = 0x4

.field public static final whitelist ERROR_SET_DEVICE_OWNER_FAILED:I = 0x7

.field public static final whitelist ERROR_STARTING_PROFILE_FAILED:I = 0x5

.field public static final whitelist ERROR_UNKNOWN:I


# instance fields
.field private final blacklist mProvisioningError:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Exception;I)V
    .registers 4
    .param p1, "cause"    # Ljava/lang/Exception;
    .param p2, "provisioningError"    # I

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/admin/ProvisioningException;-><init>(Ljava/lang/Exception;ILjava/lang/String;)V

    .line 120
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Exception;ILjava/lang/String;)V
    .registers 4
    .param p1, "cause"    # Ljava/lang/Exception;
    .param p2, "provisioningError"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0, p3, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    iput p2, p0, Landroid/app/admin/ProvisioningException;->mProvisioningError:I

    .line 135
    return-void
.end method


# virtual methods
.method public whitelist getProvisioningError()I
    .registers 2

    .line 141
    iget v0, p0, Landroid/app/admin/ProvisioningException;->mProvisioningError:I

    return v0
.end method
