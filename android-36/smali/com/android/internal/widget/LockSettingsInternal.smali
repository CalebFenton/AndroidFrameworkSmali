.class public abstract Lcom/android/internal/widget/LockSettingsInternal;
.super Ljava/lang/Object;
.source "LockSettingsInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockSettingsInternal$ArmRebootEscrowErrorCode;
    }
.end annotation


# static fields
.field public static final blacklist ARM_REBOOT_ERROR_ESCROW_NOT_READY:I = 0x2

.field public static final blacklist ARM_REBOOT_ERROR_KEYSTORE_FAILURE:I = 0x6

.field public static final blacklist ARM_REBOOT_ERROR_NONE:I = 0x0

.field public static final blacklist ARM_REBOOT_ERROR_NO_ESCROW_KEY:I = 0x5

.field public static final blacklist ARM_REBOOT_ERROR_NO_PROVIDER:I = 0x3

.field public static final blacklist ARM_REBOOT_ERROR_PROVIDER_MISMATCH:I = 0x4

.field public static final blacklist ARM_REBOOT_ERROR_STORE_ESCROW_KEY:I = 0x7

.field public static final blacklist ARM_REBOOT_ERROR_UNSPECIFIED:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
.end method

.method public abstract blacklist armRebootEscrow()I
.end method

.method public abstract blacklist clearRebootEscrow()Z
.end method

.method public abstract blacklist createNewUser(II)V
.end method

.method public abstract blacklist getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
.end method

.method public abstract blacklist isEscrowTokenActive(JI)Z
.end method

.method public abstract blacklist onThirdPartyAppsStarted()V
.end method

.method public abstract blacklist prepareRebootEscrow()Z
.end method

.method public abstract blacklist refreshStrongAuthTimeout(I)V
.end method

.method public abstract blacklist registerLockSettingsStateListener(Lcom/android/internal/widget/LockSettingsStateListener;)V
.end method

.method public abstract blacklist removeEscrowToken(JI)Z
.end method

.method public abstract blacklist removeUser(I)V
.end method

.method public abstract blacklist setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
.end method

.method public abstract blacklist setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V
.end method

.method public abstract blacklist unlockUserWithToken(J[BI)Z
.end method

.method public abstract blacklist unregisterLockSettingsStateListener(Lcom/android/internal/widget/LockSettingsStateListener;)V
.end method
