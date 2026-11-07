.class public final synthetic Lcom/android/internal/telephony/Phone$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/Phone;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/Phone$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/Phone$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/Phone;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Phone;->$r8$lambda$tDvDs4kDELnW4GyObCabxRkkXU8(Lcom/android/internal/telephony/Phone;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
