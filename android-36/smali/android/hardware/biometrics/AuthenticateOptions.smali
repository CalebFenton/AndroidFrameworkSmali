.class public interface abstract Landroid/hardware/biometrics/AuthenticateOptions;
.super Ljava/lang/Object;
.source "AuthenticateOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/AuthenticateOptions$DisplayState;
    }
.end annotation


# static fields
.field public static final blacklist DISPLAY_STATE_AOD:I = 0x4

.field public static final blacklist DISPLAY_STATE_LOCKSCREEN:I = 0x1

.field public static final blacklist DISPLAY_STATE_NO_UI:I = 0x2

.field public static final blacklist DISPLAY_STATE_SCREENSAVER:I = 0x3

.field public static final blacklist DISPLAY_STATE_UNKNOWN:I


# virtual methods
.method public abstract blacklist getAttributionTag()Ljava/lang/String;
.end method

.method public abstract blacklist getDisplayState()I
.end method

.method public abstract blacklist getOpPackageName()Ljava/lang/String;
.end method

.method public abstract blacklist getSensorId()I
.end method

.method public abstract blacklist getUserId()I
.end method

.method public abstract blacklist isMandatoryBiometrics()Z
.end method
