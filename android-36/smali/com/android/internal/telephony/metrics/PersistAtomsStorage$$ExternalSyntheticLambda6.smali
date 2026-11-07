.class public final synthetic Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntBinaryOperator;


# instance fields
.field public final synthetic blacklist f$0:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;


# direct methods
.method public synthetic constructor blacklist <init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda6;->f$0:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(II)I
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda6;->f$0:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->$r8$lambda$Xd9TxjJmDaorXzGK3oYPLO457ec([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;II)I

    move-result p0

    return p0
.end method
