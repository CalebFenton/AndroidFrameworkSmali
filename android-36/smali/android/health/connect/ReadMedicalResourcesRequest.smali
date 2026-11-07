.class public abstract Landroid/health/connect/ReadMedicalResourcesRequest;
.super Ljava/lang/Object;
.source "ReadMedicalResourcesRequest.java"


# instance fields
.field private final blacklist mPageSize:I


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 5
    .param p1, "pageSize"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x1388

    const-string v1, "pageSize"

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(IIILjava/lang/String;)V

    .line 45
    iput p1, p0, Landroid/health/connect/ReadMedicalResourcesRequest;->mPageSize:I

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist getPageSize()I
    .registers 2

    .line 54
    iget v0, p0, Landroid/health/connect/ReadMedicalResourcesRequest;->mPageSize:I

    return v0
.end method

.method abstract blacklist toParcel()Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;
.end method
