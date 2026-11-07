.class public final synthetic Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/telephony/PcoData;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;->$r8$lambda$abOVdjNfjQAA7b_VLSoUSdAWFzI(Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;Ljava/lang/Integer;Landroid/telephony/PcoData;)V

    return-void
.end method
