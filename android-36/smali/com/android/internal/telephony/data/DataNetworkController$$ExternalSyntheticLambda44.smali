.class public final synthetic Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetworkController;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;->f$0:Lcom/android/internal/telephony/data/DataNetworkController;

    iput p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;->f$0:Lcom/android/internal/telephony/data/DataNetworkController;

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->$r8$lambda$6uZJhHvCMBlRu-8mEVC5olCy7Nw(Lcom/android/internal/telephony/data/DataNetworkController;ILjava/lang/Integer;)Landroid/telephony/ims/ImsStateCallback;

    move-result-object p0

    return-object p0
.end method
