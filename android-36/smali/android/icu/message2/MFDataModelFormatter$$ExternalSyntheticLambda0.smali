.class public final synthetic Landroid/icu/message2/MFDataModelFormatter$$ExternalSyntheticLambda0;
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
    check-cast p1, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;

    check-cast p2, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;

    invoke-static {p1, p2}, Landroid/icu/message2/MFDataModelFormatter;->$r8$lambda$1lPSelMsC2Kt6GH9W2XeW7KziyY(Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;)I

    move-result p1

    return p1
.end method
