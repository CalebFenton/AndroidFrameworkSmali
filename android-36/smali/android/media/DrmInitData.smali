.class public abstract Landroid/media/DrmInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/DrmInitData$SchemeInitData;
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public abstract whitelist get(Ljava/util/UUID;)Landroid/media/DrmInitData$SchemeInitData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getSchemeInitDataAt(I)Landroid/media/DrmInitData$SchemeInitData;
    .registers 3
    .param p1, "index"    # I

    .line 63
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getSchemeInitDataCount()I
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method
