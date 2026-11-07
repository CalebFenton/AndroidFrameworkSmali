.class public final Landroid/adservices/common/UpdateAdServicesModuleStatesParams$Builder;
.super Ljava/lang/Object;
.source "UpdateAdServicesModuleStatesParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/UpdateAdServicesModuleStatesParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAdServicesModuleStateList:Landroid/util/SparseIntArray;

.field private blacklist mNotificationType:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams$Builder;->mAdServicesModuleStateList:Landroid/util/SparseIntArray;

    .line 153
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/common/UpdateAdServicesModuleStatesParams;
    .registers 5

    .line 176
    new-instance v0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;

    iget-object v1, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams$Builder;->mAdServicesModuleStateList:Landroid/util/SparseIntArray;

    iget v2, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams$Builder;->mNotificationType:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/common/UpdateAdServicesModuleStatesParams;-><init>(Landroid/util/SparseIntArray;ILandroid/adservices/common/UpdateAdServicesModuleStatesParams-IA;)V

    return-object v0
.end method

.method public whitelist setModuleState(II)Landroid/adservices/common/UpdateAdServicesModuleStatesParams$Builder;
    .registers 6
    .param p1, "module"    # I
    .param p2, "moduleState"    # I

    .line 161
    iget-object v0, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams$Builder;->mAdServicesModuleStateList:Landroid/util/SparseIntArray;

    .line 162
    invoke-static {p1}, Landroid/adservices/common/AdServicesCommonManager;->validateModule(I)I

    move-result v1

    invoke-static {p2}, Landroid/adservices/common/AdServicesCommonManager;->validateModuleState(I)I

    move-result v2

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    return-object p0
.end method

.method public whitelist setNotificationType(I)Landroid/adservices/common/UpdateAdServicesModuleStatesParams$Builder;
    .registers 2
    .param p1, "notificationType"    # I

    .line 169
    iput p1, p0, Landroid/adservices/common/UpdateAdServicesModuleStatesParams$Builder;->mNotificationType:I

    .line 170
    return-object p0
.end method
