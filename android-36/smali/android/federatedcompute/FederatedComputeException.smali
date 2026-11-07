.class public Landroid/federatedcompute/FederatedComputeException;
.super Ljava/lang/Exception;
.source "FederatedComputeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/FederatedComputeException$ErrorCode;
    }
.end annotation


# static fields
.field public static final blacklist INTERNAL_ERROR:I = 0x1


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 45
    iput p1, p0, Landroid/federatedcompute/FederatedComputeException;->mErrorCode:I

    .line 46
    return-void
.end method


# virtual methods
.method public blacklist getErrorCode()I
    .registers 2

    .line 50
    iget v0, p0, Landroid/federatedcompute/FederatedComputeException;->mErrorCode:I

    return v0
.end method
