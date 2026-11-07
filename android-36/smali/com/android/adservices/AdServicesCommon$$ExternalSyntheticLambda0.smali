.class public final synthetic Lcom/android/adservices/AdServicesCommon$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {p1}, Lcom/android/adservices/AdServicesCommon;->lambda$resolveAdServicesService$0(Landroid/content/pm/ResolveInfo;)Z

    move-result p1

    return p1
.end method
