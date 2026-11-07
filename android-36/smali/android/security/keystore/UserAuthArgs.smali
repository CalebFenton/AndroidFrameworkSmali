.class public interface abstract Landroid/security/keystore/UserAuthArgs;
.super Ljava/lang/Object;
.source "UserAuthArgs.java"


# virtual methods
.method public abstract greylist-max-o getBoundToSpecificSecureUserId()J
.end method

.method public abstract blacklist getUserAuthenticationType()I
.end method

.method public abstract greylist-max-o getUserAuthenticationValidityDurationSeconds()I
.end method

.method public abstract greylist-max-o isInvalidatedByBiometricEnrollment()Z
.end method

.method public abstract greylist-max-o isUnlockedDeviceRequired()Z
.end method

.method public abstract greylist-max-o isUserAuthenticationRequired()Z
.end method

.method public abstract greylist-max-o isUserAuthenticationValidWhileOnBody()Z
.end method

.method public abstract greylist-max-o isUserConfirmationRequired()Z
.end method

.method public abstract greylist-max-o isUserPresenceRequired()Z
.end method
