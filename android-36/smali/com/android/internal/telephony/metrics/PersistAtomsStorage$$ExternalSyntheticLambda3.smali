.class public final synthetic Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic blacklist f$0:[I


# direct methods
.method public synthetic constructor blacklist <init>([I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda3;->f$0:[I

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(Ljava/lang/Object;)I
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda3;->f$0:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->$r8$lambda$2qnY12lnIoX3FfG4XXjeDpYlg-U([ILjava/lang/Integer;)I

    move-result p0

    return p0
.end method
