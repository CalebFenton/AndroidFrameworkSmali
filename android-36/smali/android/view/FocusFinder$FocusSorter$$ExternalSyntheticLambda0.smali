.class public final synthetic Landroid/view/FocusFinder$FocusSorter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/FocusFinder$FocusSorter;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/FocusFinder$FocusSorter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/FocusFinder$FocusSorter$$ExternalSyntheticLambda0;->f$0:Landroid/view/FocusFinder$FocusSorter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/FocusFinder$FocusSorter$$ExternalSyntheticLambda0;->f$0:Landroid/view/FocusFinder$FocusSorter;

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroid/view/FocusFinder$FocusSorter;->$r8$lambda$pVuVuJcKVYPBDabzZb1jjl4unTY(Landroid/view/FocusFinder$FocusSorter;Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
