.class public abstract Landroid/ranging/RangingConfig;
.super Ljava/lang/Object;
.source "RangingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/RangingConfig$RangingSessionType;
    }
.end annotation


# static fields
.field public static final whitelist RANGING_SESSION_OOB:I = 0x1

.field public static final whitelist RANGING_SESSION_RAW:I


# instance fields
.field private blacklist mRangingSessionType:I


# direct methods
.method protected constructor whitelist <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getRangingSessionType()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/ranging/RangingConfig;->mRangingSessionType:I

    return v0
.end method

.method protected blacklist setRangingSessionType(I)V
    .registers 2
    .param p1, "rangingSessionType"    # I

    .line 72
    iput p1, p0, Landroid/ranging/RangingConfig;->mRangingSessionType:I

    .line 73
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingParams{ mRangingSessionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/RangingConfig;->mRangingSessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
