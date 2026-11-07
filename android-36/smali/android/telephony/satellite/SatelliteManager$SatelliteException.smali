.class public Landroid/telephony/satellite/SatelliteManager$SatelliteException;
.super Ljava/lang/Exception;
.source "SatelliteManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SatelliteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SatelliteException"
.end annotation


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 159
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 160
    iput p1, p0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;->mErrorCode:I

    .line 161
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;->mErrorCode:I

    return v0
.end method
