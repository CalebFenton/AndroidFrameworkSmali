.class public interface abstract Landroid/media/MicrophoneDirection;
.super Ljava/lang/Object;
.source "MicrophoneDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MicrophoneDirection$DirectionMode;
    }
.end annotation


# static fields
.field public static final whitelist MIC_DIRECTION_AWAY_FROM_USER:I = 0x2

.field public static final whitelist MIC_DIRECTION_EXTERNAL:I = 0x3

.field public static final whitelist MIC_DIRECTION_TOWARDS_USER:I = 0x1

.field public static final whitelist MIC_DIRECTION_UNSPECIFIED:I


# virtual methods
.method public abstract whitelist setPreferredMicrophoneDirection(I)Z
.end method

.method public abstract whitelist setPreferredMicrophoneFieldDimension(F)Z
.end method
