.class public final synthetic Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda4;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda4;->f$0:I

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SignalStrengthController;->$r8$lambda$mHsdxhdo_O3rsbeExrHsUbGvWbY(ILjava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method
