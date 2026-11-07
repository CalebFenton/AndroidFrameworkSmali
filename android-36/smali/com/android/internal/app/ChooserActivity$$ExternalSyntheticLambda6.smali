.class public final synthetic Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Landroid/service/chooser/ChooserTarget;

    check-cast p2, Landroid/service/chooser/ChooserTarget;

    invoke-static {p1, p2}, Lcom/android/internal/app/ChooserActivity;->lambda$convertToChooserTarget$4(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I

    move-result p1

    return p1
.end method
