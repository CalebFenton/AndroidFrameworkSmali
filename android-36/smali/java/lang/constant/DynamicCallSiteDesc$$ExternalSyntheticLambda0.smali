.class public final synthetic Ljava/lang/constant/DynamicCallSiteDesc$$ExternalSyntheticLambda0;
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
    check-cast p1, Ljava/lang/constant/ConstantDesc;

    invoke-static {p1}, Ljava/lang/constant/DynamicCallSiteDesc;->$r8$lambda$vF2VvuFUa-tu3hP19oq2GBK17DA(Ljava/lang/constant/ConstantDesc;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
