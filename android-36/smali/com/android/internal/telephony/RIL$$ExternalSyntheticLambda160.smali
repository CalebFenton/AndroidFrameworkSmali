.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioSimProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;->f$0:Lcom/android/internal/telephony/RadioSimProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;->f$0:Lcom/android/internal/telephony/RadioSimProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$2LsnXy3lDEvOwdaaX5oevspVCss(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
