.class public final synthetic Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->lambda$getContributingPackagesAsDataOrigin$2(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin;

    move-result-object p1

    return-object p1
.end method
