.class public final synthetic Lcom/android/internal/telephony/data/CellularNetworkValidator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/CellularNetworkValidator;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    iput p2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    iget p0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->$r8$lambda$FIEr6kA014C_oBfioBw4YZ9rqjE(Lcom/android/internal/telephony/data/CellularNetworkValidator;I)V

    return-void
.end method
