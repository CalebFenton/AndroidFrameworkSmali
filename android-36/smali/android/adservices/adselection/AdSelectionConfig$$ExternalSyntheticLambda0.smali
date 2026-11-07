.class public final synthetic Landroid/adservices/adselection/AdSelectionConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/adservices/AdServicesParcelableUtil$StringToObjectConverter;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist convertFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/adservices/common/AdTechIdentifier;->fromString(Ljava/lang/String;)Landroid/adservices/common/AdTechIdentifier;

    move-result-object p1

    return-object p1
.end method
