.class public final synthetic Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda11;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda11;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->$r8$lambda$63e2w4walaf3QBr4mIcO0qaacdU(Ljava/util/function/Consumer;Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method
