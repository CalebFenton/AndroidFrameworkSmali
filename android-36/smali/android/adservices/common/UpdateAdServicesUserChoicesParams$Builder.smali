.class public final Landroid/adservices/common/UpdateAdServicesUserChoicesParams$Builder;
.super Ljava/lang/Object;
.source "UpdateAdServicesUserChoicesParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/UpdateAdServicesUserChoicesParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAdServicesUserChoiceList:Landroid/util/SparseIntArray;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams$Builder;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    .line 151
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/common/UpdateAdServicesUserChoicesParams;
    .registers 4

    .line 166
    new-instance v0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;

    iget-object v1, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams$Builder;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/adservices/common/UpdateAdServicesUserChoicesParams;-><init>(Landroid/util/SparseIntArray;Landroid/adservices/common/UpdateAdServicesUserChoicesParams-IA;)V

    return-object v0
.end method

.method public whitelist setUserChoice(II)Landroid/adservices/common/UpdateAdServicesUserChoicesParams$Builder;
    .registers 4
    .param p1, "module"    # I
    .param p2, "userChoice"    # I

    .line 159
    iget-object v0, p0, Landroid/adservices/common/UpdateAdServicesUserChoicesParams$Builder;->mAdServicesUserChoiceList:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    return-object p0
.end method
